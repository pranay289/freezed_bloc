package com.example.sample_bloc
import android.provider.CalendarContract.Events
import android.widget.Toast
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel


class MainActivity: FlutterActivity() {
    private  val  CHANNEL = "MY_CHANNEL"

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger,CHANNEL).setMethodCallHandler { call, result ->

            if (call.method == "showToast") {
                Toast.makeText(this,call.arguments.toString(),Toast.LENGTH_SHORT).show()
                result.success("Message From Android")
            }
        }
    }


}
