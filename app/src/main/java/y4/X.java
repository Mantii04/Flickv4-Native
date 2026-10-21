package y4;

import android.content.SharedPreferences;
import android.os.Build;
import android.view.View;
import android.widget.Toast;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.MainActivity;
import flix.com.vision.models.Movie;
import flix.com.vision.tv.Constant;
import z.AbstractC1958d;

/* loaded from: classes2.dex */
public final /* synthetic */ class X implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21188b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MainActivity f21189e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Q4.d f21190f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Movie f21191j;

    public /* synthetic */ X(MainActivity mainActivity, Q4.d dVar, Movie movie, int i2) {
        this.f21188b = i2;
        this.f21189e = mainActivity;
        this.f21190f = dVar;
        this.f21191j = movie;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        boolean canRequestPackageInstalls;
        int i2 = 1;
        Movie movie = this.f21191j;
        Q4.d dVar = this.f21190f;
        MainActivity mainActivity = this.f21189e;
        switch (this.f21188b) {
            case 0:
                int i7 = MainActivity.f14747T;
                mainActivity.getClass();
                dVar.dismiss();
                int i8 = Build.VERSION.SDK_INT;
                if (i8 < 29 && A.h.checkSelfPermission(mainActivity, "android.permission.WRITE_EXTERNAL_STORAGE") == -1) {
                    Toast.makeText(mainActivity.getBaseContext(), mainActivity.getString(R.string.please_grant_permissions_label), 1).show();
                    AbstractC1958d.requestPermissions(mainActivity, new String[]{"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"}, 1000);
                    break;
                } else {
                    if (i8 >= 26) {
                        canRequestPackageInstalls = mainActivity.getPackageManager().canRequestPackageInstalls();
                        if (!canRequestPackageInstalls) {
                            Q4.d newInstance = Q4.d.newInstance(mainActivity, true);
                            newInstance.setTitle("Grant install Permission");
                            newInstance.setMessage("Please grant the Permission to install the Update");
                            newInstance.setButton1("Cancel", new A4.o(newInstance, 11));
                            newInstance.setButton2("OK", new ViewOnClickListenerC1898d0(mainActivity, 4));
                            newInstance.show(mainActivity.getFragmentManager(), "");
                            break;
                        }
                    }
                    SharedPreferences sharedPreferences = App.getInstance().f14440s;
                    String str = Constant.f16184b;
                    String string = sharedPreferences.getString("update_url", null);
                    if (string != null) {
                        String str2 = App.f14424I ? ", Or use the Downloader Code: 108545" : "";
                        Q4.d newInstance2 = Q4.d.newInstance(mainActivity, true);
                        newInstance2.setMessage("Please use the official version from https://linktr.ee/flixvision".concat(str2));
                        newInstance2.setTitle("Update Ready");
                        newInstance2.setButton1("CANCEL", new X(mainActivity, newInstance2, movie, i2));
                        newInstance2.setButton2("DOWNLOAD UPDATE", new A4.p(mainActivity, newInstance2, string, 2));
                        newInstance2.show(mainActivity.getFragmentManager(), "");
                        break;
                    }
                }
                break;
            case 1:
                int i9 = MainActivity.f14747T;
                mainActivity.getClass();
                dVar.dismiss();
                if (movie != null) {
                    mainActivity.openMovieintent(movie);
                    break;
                }
                break;
            default:
                int i10 = MainActivity.f14747T;
                mainActivity.getClass();
                dVar.dismiss();
                if (movie != null) {
                    mainActivity.openMovieintent(movie);
                    break;
                }
                break;
        }
    }
}
