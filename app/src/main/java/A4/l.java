package A4;

import android.content.SharedPreferences;
import android.os.Build;
import android.view.View;
import android.widget.Toast;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.leanback.MainActivityLeanback;
import flix.com.vision.models.Movie;
import flix.com.vision.tv.Constant;
import z.AbstractC1958d;

/* loaded from: classes2.dex */
public final /* synthetic */ class l implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f72b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MainActivityLeanback f73e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Q4.d f74f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Movie f75j;

    public /* synthetic */ l(MainActivityLeanback mainActivityLeanback, Q4.d dVar, Movie movie, int i2) {
        this.f72b = i2;
        this.f73e = mainActivityLeanback;
        this.f74f = dVar;
        this.f75j = movie;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        boolean canRequestPackageInstalls;
        int i2 = 0;
        Movie movie = this.f75j;
        Q4.d dVar = this.f74f;
        MainActivityLeanback mainActivityLeanback = this.f73e;
        switch (this.f72b) {
            case 0:
                int i7 = MainActivityLeanback.f15476I;
                mainActivityLeanback.getClass();
                dVar.dismiss();
                if (movie != null) {
                    mainActivityLeanback.i(movie);
                    break;
                }
                break;
            case 1:
                int i8 = MainActivityLeanback.f15476I;
                dVar.dismiss();
                int i9 = Build.VERSION.SDK_INT;
                if (i9 < 29 && A.h.checkSelfPermission(mainActivityLeanback, "android.permission.WRITE_EXTERNAL_STORAGE") == -1) {
                    Toast.makeText(mainActivityLeanback.getBaseContext(), mainActivityLeanback.getString(R.string.please_grant_permissions_label), 1).show();
                    AbstractC1958d.requestPermissions(mainActivityLeanback, new String[]{"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"}, 1000);
                    break;
                } else {
                    if (i9 >= 26) {
                        canRequestPackageInstalls = mainActivityLeanback.getPackageManager().canRequestPackageInstalls();
                        if (!canRequestPackageInstalls) {
                            Q4.d newInstance = Q4.d.newInstance(mainActivityLeanback, true);
                            newInstance.setTitle("Grant install Permission");
                            newInstance.setMessage("Please grant the Permission to install the Update");
                            newInstance.setButton1("Cancel", new o(newInstance, i2));
                            newInstance.setButton2("OK", new j(mainActivityLeanback, 5));
                            newInstance.show(mainActivityLeanback.getFragmentManager(), "");
                            break;
                        }
                    }
                    SharedPreferences sharedPreferences = App.getInstance().f14440s;
                    String str = Constant.f16184b;
                    String string = sharedPreferences.getString("update_url", null);
                    if (string != null) {
                        String str2 = App.f14424I ? ", Or use the Downloader Code: 108545" : "";
                        Q4.d newInstance2 = Q4.d.newInstance(mainActivityLeanback, true);
                        newInstance2.setMessage("Please use the official version from https://linktr.ee/flixvision".concat(str2));
                        newInstance2.setTitle("Update Ready");
                        newInstance2.setButton1("CANCEL", new l(mainActivityLeanback, newInstance2, movie, 2));
                        newInstance2.setButton2("DOWNLOAD UPDATE", new p(mainActivityLeanback, newInstance2, string, i2));
                        newInstance2.show(mainActivityLeanback.getFragmentManager(), "");
                        break;
                    }
                }
                break;
            default:
                int i10 = MainActivityLeanback.f15476I;
                mainActivityLeanback.getClass();
                dVar.dismiss();
                if (movie != null) {
                    mainActivityLeanback.i(movie);
                    break;
                }
                break;
        }
    }
}
