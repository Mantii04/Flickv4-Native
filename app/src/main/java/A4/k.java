package A4;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import e.DialogInterfaceC0839s;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.leanback.MainActivityLeanback;
import flix.com.vision.activities.leanback.SlideshowActivity;
import java.util.Iterator;
import z.AbstractC1958d;

/* loaded from: classes2.dex */
public final /* synthetic */ class k implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f70b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MainActivityLeanback f71e;

    public /* synthetic */ k(MainActivityLeanback mainActivityLeanback, int i2) {
        this.f70b = i2;
        this.f71e = mainActivityLeanback;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        int i2 = 0;
        MainActivityLeanback mainActivityLeanback = this.f71e;
        switch (this.f70b) {
            case 0:
                int i7 = MainActivityLeanback.f15476I;
                mainActivityLeanback.getClass();
                mainActivityLeanback.startActivity(new Intent(mainActivityLeanback, (Class<?>) SlideshowActivity.class));
                break;
            case 1:
                int i8 = MainActivityLeanback.f15476I;
                String str2 = "";
                try {
                    str = mainActivityLeanback.getPackageManager().getPackageInfo(mainActivityLeanback.getPackageName(), 0).versionName + "";
                } catch (Exception e3) {
                    e3.printStackTrace();
                    str = "x.x.x";
                }
                if (!App.getInstance().f14440s.getBoolean(str, false)) {
                    App.getInstance().f14440s.edit().putInt(mainActivityLeanback.getString(R.string.start_count_label), 0).apply();
                    Iterator it = App.f14430z.iterator();
                    while (it.hasNext()) {
                        str2 = A.i.B(str2, (String) it.next());
                    }
                    e.r rVar = new e.r(mainActivityLeanback, R.style.AlertDialogCustom);
                    View inflate = mainActivityLeanback.getLayoutInflater().inflate(R.layout.dialog_release_notes, (ViewGroup) null);
                    rVar.setView(inflate);
                    TextView textView = (TextView) inflate.findViewById(R.id.rn_title);
                    TextView textView2 = (TextView) inflate.findViewById(R.id.rn_content);
                    View findViewById = inflate.findViewById(R.id.rn_btn_ok);
                    textView.setText("v" + str + " Release Notes");
                    textView2.setText(str2);
                    DialogInterfaceC0839s create = rVar.create();
                    create.setCancelable(true);
                    if (create.getWindow() != null) {
                        create.getWindow().setBackgroundDrawable(new ColorDrawable(0));
                    }
                    findViewById.setOnClickListener(new m(i2, mainActivityLeanback, create));
                    try {
                        create.show();
                    } catch (Exception e7) {
                        e7.printStackTrace();
                    }
                    A.i.x(App.getInstance().f14440s, str, true);
                    break;
                }
                break;
            case 2:
                int i9 = MainActivityLeanback.f15476I;
                if (mainActivityLeanback.g()) {
                    mainActivityLeanback.e();
                    break;
                }
                break;
            case 3:
                if (!mainActivityLeanback.f15479C.isFocused()) {
                    MainActivityLeanback.j(mainActivityLeanback.f15479C, R.color.white);
                    mainActivityLeanback.f15479C.setTextColor(mainActivityLeanback.getResources().getColor(R.color.color_grey));
                }
                if (!mainActivityLeanback.f15480D.isFocused()) {
                    MainActivityLeanback.j(mainActivityLeanback.f15480D, R.color.white);
                    mainActivityLeanback.f15480D.setTextColor(mainActivityLeanback.getResources().getColor(R.color.color_grey));
                }
                if (!mainActivityLeanback.f15495t.isFocused()) {
                    MainActivityLeanback.j(mainActivityLeanback.f15495t, R.color.white);
                    mainActivityLeanback.f15495t.setTextColor(mainActivityLeanback.getResources().getColor(R.color.color_grey));
                }
                if (!mainActivityLeanback.f15496u.isFocused()) {
                    MainActivityLeanback.j(mainActivityLeanback.f15496u, R.color.white);
                    mainActivityLeanback.f15496u.setTextColor(mainActivityLeanback.getResources().getColor(R.color.color_grey));
                }
                if (!mainActivityLeanback.f15497v.isFocused()) {
                    MainActivityLeanback.j(mainActivityLeanback.f15497v, R.color.white);
                    mainActivityLeanback.f15497v.setTextColor(mainActivityLeanback.getResources().getColor(R.color.color_grey));
                }
                if (!mainActivityLeanback.f15498w.isFocused()) {
                    MainActivityLeanback.j(mainActivityLeanback.f15498w, R.color.white);
                    mainActivityLeanback.f15498w.setTextColor(mainActivityLeanback.getResources().getColor(R.color.color_grey));
                }
                if (!mainActivityLeanback.f15499x.isFocused()) {
                    MainActivityLeanback.j(mainActivityLeanback.f15499x, R.color.white);
                    mainActivityLeanback.f15499x.setTextColor(mainActivityLeanback.getResources().getColor(R.color.color_grey));
                }
                if (!mainActivityLeanback.f15500y.isFocused()) {
                    MainActivityLeanback.j(mainActivityLeanback.f15500y, R.color.white);
                    mainActivityLeanback.f15500y.setTextColor(mainActivityLeanback.getResources().getColor(R.color.color_grey));
                }
                if (!mainActivityLeanback.f15478B.isFocused()) {
                    MainActivityLeanback.j(mainActivityLeanback.f15478B, R.color.white);
                    mainActivityLeanback.f15478B.setTextColor(mainActivityLeanback.getResources().getColor(R.color.color_grey));
                }
                if (!mainActivityLeanback.f15501z.isFocused()) {
                    MainActivityLeanback.j(mainActivityLeanback.f15501z, R.color.white);
                    mainActivityLeanback.f15501z.setTextColor(mainActivityLeanback.getResources().getColor(R.color.color_grey));
                }
                if (!mainActivityLeanback.f15477A.isFocused()) {
                    MainActivityLeanback.j(mainActivityLeanback.f15477A, R.color.white);
                    mainActivityLeanback.f15477A.setTextColor(mainActivityLeanback.getResources().getColor(R.color.color_grey));
                    break;
                }
                break;
            default:
                int i10 = MainActivityLeanback.f15476I;
                mainActivityLeanback.getClass();
                try {
                    if (A.h.checkSelfPermission(mainActivityLeanback, "android.permission.WRITE_EXTERNAL_STORAGE") == -1) {
                        AbstractC1958d.requestPermissions(mainActivityLeanback, new String[]{"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"}, 10001);
                        break;
                    }
                } catch (Exception e8) {
                    e8.printStackTrace();
                }
                break;
        }
    }
}
