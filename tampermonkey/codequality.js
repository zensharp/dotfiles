// ==UserScript==
// @name         Code Quality Widget Fix
// @namespace    Andtech
// @author       andtech
// @version      0.4.0
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
        var resolved_err = report.resolved_errors.length;
        var current_err = resolved_err + report.existing_errors.length;

        el.innerHTML = "This merge request will fix <b>" + resolved_err + " of " + current_err + " existing errors</b>, and will introduce <b>" + new_err + " new degredations</b>.";

        console.log("Tamper Monkey completed");
    }

    getCodeQuality();
})();