
// can be removed if all forms are form generated or all non-form generated forms do not call this anymore
var valCancelSubmit = false;
function preSubmitValidationCheck()
{
    if (valCancelSubmit == undefined) return true;

    if (valCancelSubmit == true)
    {
        valCancelSubmit = false;
        return false;
    }

    return true;
}

window.zendeskFeedbackTabId = "20321006"


