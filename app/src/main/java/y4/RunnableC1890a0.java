package y4;

import android.content.SharedPreferences;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.android.material.internal.NavigationMenuView;
import e.DialogInterfaceC0839s;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.MainActivity;
import flix.com.vision.tv.Constant;
import java.util.Iterator;
import z.AbstractC1958d;

/* renamed from: y4.a0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class RunnableC1890a0 implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21202b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MainActivity f21203e;

    public /* synthetic */ RunnableC1890a0(MainActivity mainActivity, int i2) {
        this.f21202b = i2;
        this.f21203e = mainActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        NavigationMenuView navigationMenuView;
        MainActivity mainActivity = this.f21203e;
        switch (this.f21202b) {
            case 0:
                int i2 = MainActivity.f14747T;
                mainActivity.recreate();
                break;
            case 1:
                int i7 = MainActivity.f14747T;
                mainActivity.recreate();
                break;
            case 2:
                int i8 = MainActivity.f14747T;
                String str2 = "";
                try {
                    str = mainActivity.getPackageManager().getPackageInfo(mainActivity.getPackageName(), 0).versionName + "";
                } catch (Exception e3) {
                    e3.printStackTrace();
                    str = "x.x.x";
                }
                if (!App.getInstance().f14440s.getBoolean(str, false)) {
                    App.getInstance().f14440s.edit().putInt(mainActivity.getString(R.string.start_count_label), 0).apply();
                    Iterator it = App.f14430z.iterator();
                    while (it.hasNext()) {
                        str2 = A.i.B(str2, (String) it.next());
                    }
                    e.r rVar = new e.r(mainActivity, R.style.AlertDialogCustom);
                    View inflate = mainActivity.getLayoutInflater().inflate(R.layout.dialog_release_notes, (ViewGroup) null);
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
                    findViewById.setOnClickListener(new A4.m(18, mainActivity, create));
                    try {
                        create.show();
                    } catch (Exception e7) {
                        e7.printStackTrace();
                    }
                    A.i.x(App.getInstance().f14440s, str, true);
                    break;
                }
                break;
            case 3:
                int i9 = MainActivity.f14747T;
                mainActivity.getClass();
                SharedPreferences sharedPreferences = App.getInstance().f14440s;
                String str3 = Constant.f16184b;
                int i10 = sharedPreferences.getInt("app_start_count", 0) + 1;
                App.getInstance().f14440s.edit().putInt("app_start_count", i10).apply();
                if (i10 >= 11 && !App.getInstance().f14440s.getBoolean("twitter_check", false)) {
                    mainActivity.l();
                }
                if (i10 >= 16 && !App.getInstance().f14440s.getBoolean("discord_check", false)) {
                    mainActivity.j();
                    break;
                }
                break;
            case 4:
                int i11 = MainActivity.f14747T;
                mainActivity.askToUpdateIfAny(false, null);
                break;
            case 5:
                int i12 = MainActivity.f14747T;
                mainActivity.getClass();
                try {
                    int i13 = App.getInstance().f14440s.getInt("actual_menu_index", 1);
                    A3.k kVar = mainActivity.f14780w;
                    if (kVar != null) {
                        kVar.getMenu().getItem(i13).setChecked(true);
                        break;
                    }
                } catch (Exception e8) {
                    e8.printStackTrace();
                    return;
                }
                break;
            case 6:
                int i14 = MainActivity.f14747T;
                mainActivity.getClass();
                try {
                    A3.k kVar2 = mainActivity.f14780w;
                    if (kVar2 != null && (navigationMenuView = (NavigationMenuView) kVar2.getChildAt(0)) != null) {
                        navigationMenuView.setVerticalScrollBarEnabled(false);
                        break;
                    }
                } catch (Exception e9) {
                    e9.printStackTrace();
                    return;
                }
                break;
            case 7:
                mainActivity.f14760M = false;
                break;
            case 8:
                int i15 = MainActivity.f14747T;
                mainActivity.getClass();
                try {
                    if (A.h.checkSelfPermission(mainActivity, "android.permission.WRITE_EXTERNAL_STORAGE") == -1) {
                        AbstractC1958d.requestPermissions(mainActivity, new String[]{"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"}, 10001);
                        break;
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return;
                }
                break;
            case 9:
                mainActivity.g(mainActivity.f14751D);
                break;
            case 10:
                int i16 = MainActivity.f14747T;
                mainActivity.recreate();
                break;
            case 11:
                int i17 = MainActivity.f14747T;
                mainActivity.recreate();
                break;
            default:
                mainActivity.f14750C.requestFocus();
                break;
        }
    }
}
