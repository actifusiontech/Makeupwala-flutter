# Flutter ProGuard Rules
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.**  { *; }
-keep class io.flutter.util.**  { *; }
-keep class io.flutter.view.**  { *; }
-keep class io.flutter.**  { *; }
-keep class io.flutter.plugins.**  { *; }

# Google ML Kit ProGuard Rules
-keep class com.google.android.gms.internal.mlkit_vision_common.** { *; }
-keep class com.google.mlkit.** { *; }
-dontwarn com.google.mlkit.**
-dontwarn com.google.android.gms.internal.mlkit_**
-dontwarn com.google.android.play.core.**

# Additional ML Kit Text Recognition if needed (fixing the "Missing class" errors)
-dontwarn com.google.mlkit.vision.text.**
-dontwarn com.google.android.gms.vision.**
-dontwarn com.google.android.gms.internal.vision.**
