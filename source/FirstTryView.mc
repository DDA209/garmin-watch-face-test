// import Toybox.Graphics;
// import Toybox.Lang;
// import Toybox.System;
// import Toybox.WatchUi;

// class FirstTryView extends WatchUi.WatchFace {

//     // Define background image

//     // var background;

//     function initialize() {
//         WatchFace.initialize();
//         // View.initialize();
//         // background = new WatchUi.Bitmap({
//         //     :rezId=>Rez.Drawables.background,
//         //     :locX=>10,
//         //     :locY=>30
//         // });
//     }

//     // Load your resources here
//     function onLayout(dc as Dc) as Void {
//         setLayout(Rez.Layouts.WatchFace(dc));
//     }

//     // Called when this View is brought to the foreground. Restore
//     // the state of this View and prepare it to be shown. This includes
//     // loading resources into memory.
//     function onShow() as Void {
//     }

//     // Update the view
//     function onUpdate(dc as DC) as Void {
//         // background.draw(dc);

//         // Get and show the current time
//         var clockTime = System.getClockTime();
//         // var calcTime = System.getClockTime();
//         var hour = clockTime.hour.format("%02d");
//         var minute = clockTime.min.format("%02d");
//         var second = clockTime.sec.format("%02d");
//         var view = View.findDrawableById("TimeLabel") as Text;
//         // var background = View.findDrawableById("Background") as Bitmap;

//         // // var hourAngle = 2 * Math.PI * (calcTime.hour + calcTime.min / 60) / 12 - Math.PI / 2;
//         // // var minuteAngle = 2 * Math.PI * calcTime.min / 60 - Math.PI / 2;
//         // // var secondeAngle = 2 * Math.PI * calcTime.second / 60 - Math.PI / 2;

//         view.setText("Il est " + hour  + ":" + minute + ":" + second);

//         // Call the parent onUpdate function to redraw the layout
        
//         View.onUpdate(dc);
//     }

//     // Called when this View is removed from the screen. Save the
//     // state of this View here. This includes freeing resources from
//     // memory.
//     function onHide() as Void {
//     }

//     // The user has just looked at their watch. Timers and animations may be started here.
//     function onExitSleep() as Void {
//     }

//     // Terminate any active timers and prepare for slow updates.
//     function onEnterSleep() as Void {
//     }

// }


// The bitmap.xml file contents:
// <resources>
//     <bitmap id="myBitmap" filename="images/myBitmap.png" />
// </resources>

using Toybox.Graphics;
using Toybox.WatchUi;

class FirstTryView extends WatchUi.View {
    
    var background;

    function onLayout(dc as Dc) as Void {
        setLayout(Rez.Layouts.WatchFace(dc));
    }

    function initialize() {
        View.initialize();
        background = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.Background,
            :locX=>0,
            :locY=>0
        });
    }




    // Update the view
    function onUpdate(dc) {

        background.draw(dc);


        var clockTime = System.getClockTime();
        var hour = clockTime.hour.format("%02d");
        var minute = clockTime.min.format("%02d");
        var second = clockTime.sec.format("%02d");
        var view = View.findDrawableById("TimeLabel") as Text;

        view.setText(".");
        // view.setText("Hello");
        
        View.onUpdate(dc);
    }
}