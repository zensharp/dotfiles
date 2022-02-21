// ==UserScript==
// @name         Code Quality Widget Fix
// @namespace    Andtech
// @author       andtech
// @version      0.3.12
// @match        https://gitlab.com/*/-/merge_requests/*
// @run-at       document-end
// @updateurl    https://gitlab.com/andtech/dotfiles/-/raw/master/tampermonkey/codequality.js
// @downloadurl  https://gitlab.com/andtech/dotfiles/-/raw/master/tampermonkey/codequality.js
// @description  See https://gitlab.com/gitlab-org/gitlab/-/issues/244338#note_720313480
// ==/UserScript==

(function() {
    'use strict';

    function sleep(ms) {
        return new Promise(resolve => setTimeout(resolve, ms));
    }

    async function getCodeQuality() {
        console.log("Tamper Monkey Script loaded");

        while (el == undefined) {
            var el = document.querySelector("[data-testid='report-section-code-text']");
            await sleep(250);
        }
        console.log("Found element");

        /* get code quality report for this issue */
        var cqurl = window.location.href + "/codequality_reports.json";
        const response = await fetch(cqurl);
        const report = await response.json();
        console.log("Code Quality json loaded");

        var new_err = report.new_errors.length;
        var fixed_err = report.resolved_errors.length;

        /* add the info to the already-displayed text */
        el.innerText += "(Fixed: " + fixed_err + "  New: " + new_err + ")";

        console.log("Tamper Monkey completed");
    }

    getCodeQuality();
})();