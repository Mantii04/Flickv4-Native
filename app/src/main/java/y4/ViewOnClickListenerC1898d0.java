package y4;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import flix.com.vision.activities.MainActivity;
import flix.com.vision.activities.ModernFilePickerActivity;
import flix.com.vision.activities.TraktSignInActivity;
import flix.com.vision.tv.M3UImportActivity;
import z.AbstractC1958d;

/* renamed from: y4.d0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class ViewOnClickListenerC1898d0 implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21217b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MainActivity f21218e;

    public /* synthetic */ ViewOnClickListenerC1898d0(MainActivity mainActivity, int i2) {
        this.f21217b = i2;
        this.f21218e = mainActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        MainActivity mainActivity = this.f21218e;
        switch (this.f21217b) {
            case 0:
                int i2 = MainActivity.f14747T;
                mainActivity.getClass();
                MainActivity.resetFilter();
                mainActivity.finish();
                break;
            case 1:
                int i7 = MainActivity.f14747T;
                mainActivity.getClass();
                try {
                    if (A.h.checkSelfPermission(mainActivity, "android.permission.WRITE_EXTERNAL_STORAGE") == -1) {
                        AbstractC1958d.requestPermissions(mainActivity, new String[]{"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"}, 1000);
                        break;
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
                Intent intent = new Intent(mainActivity, (Class<?>) ModernFilePickerActivity.class);
                intent.putExtra("picker_mode", "m3u");
                mainActivity.startActivityForResult(intent, 12345);
                break;
            case 2:
                int i8 = MainActivity.f14747T;
                mainActivity.getClass();
                mainActivity.startActivity(new Intent(mainActivity, (Class<?>) M3UImportActivity.class));
                break;
            case 3:
                int i9 = MainActivity.f14747T;
                mainActivity.getClass();
                mainActivity.startActivity(new Intent(mainActivity, (Class<?>) TraktSignInActivity.class));
                break;
            default:
                int i10 = MainActivity.f14747T;
                mainActivity.getClass();
                mainActivity.startActivityForResult(new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES", Uri.parse("package:flix.com.vision")), 2000);
                break;
        }
    }
}
