package A4;

import android.app.FragmentManager;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.view.View;
import androidx.fragment.app.H;
import flix.com.vision.App;
import flix.com.vision.activities.MainActivity;
import flix.com.vision.activities.SearchActivityTV;
import flix.com.vision.activities.leanback.MainActivityLeanback;
import flix.com.vision.models.Movie;
import flix.com.vision.tv.Constant;

/* loaded from: classes2.dex */
public final /* synthetic */ class p implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f84b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Q4.d f85e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ H f86f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f87j;

    public /* synthetic */ p(H h7, Q4.d dVar, Object obj, int i2) {
        this.f84b = i2;
        this.f86f = h7;
        this.f85e = dVar;
        this.f87j = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Object obj = this.f87j;
        Q4.d dVar = this.f85e;
        H h7 = this.f86f;
        switch (this.f84b) {
            case 0:
                int i2 = MainActivityLeanback.f15476I;
                MainActivityLeanback mainActivityLeanback = (MainActivityLeanback) h7;
                mainActivityLeanback.getClass();
                dVar.dismiss();
                new T4.r(mainActivityLeanback).startDownload((String) obj);
                break;
            case 1:
                FragmentManager fragmentManager = (FragmentManager) obj;
                int i7 = MainActivity.f14747T;
                MainActivity mainActivity = (MainActivity) h7;
                mainActivity.getClass();
                dVar.dismiss();
                Intent intent = new Intent("android.intent.action.SENDTO");
                intent.setData(Uri.parse("mailto:"));
                intent.putExtra("android.intent.extra.EMAIL", "info@flixvision.tv");
                intent.putExtra("android.intent.extra.SUBJECT", "Flix Vision App");
                if (intent.resolveActivity(mainActivity.getPackageManager()) != null) {
                    mainActivity.startActivity(intent);
                }
                try {
                    dVar.show(fragmentManager, "");
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
                SharedPreferences.Editor edit = App.getInstance().f14440s.edit();
                String str = Constant.f16184b;
                edit.putBoolean("discord_check", true).apply();
                break;
            case 2:
                int i8 = MainActivity.f14747T;
                MainActivity mainActivity2 = (MainActivity) h7;
                mainActivity2.getClass();
                dVar.dismiss();
                new T4.r(mainActivity2).startDownload((String) obj);
                break;
            default:
                int i9 = SearchActivityTV.f14981I;
                SearchActivityTV searchActivityTV = (SearchActivityTV) h7;
                searchActivityTV.getClass();
                dVar.dismiss();
                Movie movie = (Movie) obj;
                if (movie != null) {
                    searchActivityTV.openMovieintent(movie);
                    break;
                }
                break;
        }
    }
}
