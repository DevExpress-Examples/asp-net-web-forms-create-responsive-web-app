(function () {
    function adjustMapContainer() {
        var mapControl = document.getElementById('mapControl');

        // calculate the available height's value for the map control
        var footerWrapperHeight = document.getElementById('footerWrapper').offsetHeight;
        var height = window.innerHeight - footerWrapperHeight - headerPanel.GetHeight();

        // assign the map control's height
        mapControl.height = height;
    }

    function onMapControlInit(s, e) {
        AddAdjustmentDelegate(adjustMapContainer); // the adjustment delegate is invoked each time when the map control container is resized (browser window is resized, left-side menu is expanded/collapsed, etc.)
    }

    window.onMapControlInit = onMapControlInit;
})();
