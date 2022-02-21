// ==UserScript==
// @name         Code Quality Widget Fix
// @namespace    Andtech
// @version      0.3.9
// @match        https://gitlab.com/*/-/merge_requests/*
// @updateurl    https://gitlab.com/andtech/dotfiles/-/raw/master/tampermonkey/codequality.js
// @downloadurl  https://gitlab.com/andtech/dotfiles/-/raw/master/tampermonkey/codequality.js
// @description  See https://gitlab.com/gitlab-org/gitlab/-/issues/244338#note_720313480
// @author       andtech
// ==/UserScript==

(function() {
    'use strict';

    function sleep(ms) {
        return new Promise(resolve => setTimeout(resolve, ms));
    }

    async function getCodeQuality() {
        console.log("Tamper Monkey Script loaded");
        
        sleep(2000)
        /* get code quality report for this issue */
        var cqurl = window.location.href + "/codequality_reports.json";
        const response = await fetch(cqurl);
        const report = await response.json();
        console.log("Code Quality json loaded");
    
        var new_err = report.new_errors.length;
        var fixed_err = report.resolved_errors.length;
        var delta = new_err-fixed_err;
    
        /* add plus sign for positive change */
        if ((delta) > 0) {
            delta = "+" + delta;
        }
    
        /* add the info to the already-displayed text */
        var el = $("div[data-testid='report-section-code-text']")
        alert(el.innerText);
        el.innerText += "\nResolved: " + fixed_err + "  New: " + new_err;
        el.innerText += "\nChange: " + (delta);

        console.log("Tamper Monkey completed");
    }
    
    getCodeQuality();
})();