package A4;

import C4.C0082f;
import C4.C0086j;
import C4.C0087k;
import C4.C0093q;
import C4.C0097v;
import C4.C0098w;
import C4.C0100y;
import C4.C0101z;
import C4.H;
import C4.I;
import C4.L;
import C4.O;
import C4.P;
import C4.Q;
import C4.S;
import C4.b0;
import C4.c0;
import C4.d0;
import C4.e0;
import C4.g0;
import C4.h0;
import C4.i0;
import C4.j0;
import C4.l0;
import C4.m0;
import C4.n0;
import C4.o0;
import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Handler;
import android.view.View;
import android.widget.Toast;
import androidx.media3.common.MimeTypes;
import e.DialogInterfaceC0839s;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.CastMoviesActivity;
import flix.com.vision.activities.DramaHomeActivity;
import flix.com.vision.activities.LinksActivity;
import flix.com.vision.activities.MainActivity;
import flix.com.vision.activities.SearchActivityTV;
import flix.com.vision.activities.UserTorrentsActivity;
import flix.com.vision.activities.WatchedAcvivity;
import flix.com.vision.activities.adult.AdultHistoryActivity;
import flix.com.vision.activities.leanback.CastMoviesActivityLeanBack;
import flix.com.vision.activities.leanback.MainActivityLeanback;
import flix.com.vision.activities.player.SimpleVideoPlayer;
import flix.com.vision.bvp.subtitle.CaptionsView;
import flix.com.vision.models.ColorItem;
import flix.com.vision.models.Drama;
import flix.com.vision.models.Movie;
import flix.com.vision.models.adult.AdultVideo;
import flix.com.vision.tv.Constant;
import flix.com.vision.tv.MyImportActivity;
import h5.AbstractC0995i;
import java.io.File;
import java.util.Iterator;
import l.C1191v1;
import y4.I0;
import y4.M0;
import y4.RunnableC1890a0;
import z.AbstractC1958d;

/* loaded from: classes2.dex */
public final /* synthetic */ class m implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f77e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f78f;

    public /* synthetic */ m(int i2, Object obj, Object obj2) {
        this.f76b = i2;
        this.f77e = obj;
        this.f78f = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        boolean canRequestPackageInstalls;
        int i2 = 0;
        Object obj = this.f78f;
        Object obj2 = this.f77e;
        switch (this.f76b) {
            case 0:
                int i7 = MainActivityLeanback.f15476I;
                ((DialogInterfaceC0839s) obj).dismiss();
                new Handler().postDelayed(new k((MainActivityLeanback) obj2, 4), 1000L);
                break;
            case 1:
                SimpleVideoPlayer simpleVideoPlayer = (SimpleVideoPlayer) obj2;
                simpleVideoPlayer.f15630A.setCaptionsPath((String) obj, CaptionsView.CMime.f15985b, "");
                simpleVideoPlayer.H();
                try {
                    N4.a.Success(simpleVideoPlayer, "Subtitles Enabled", null, 48, 0);
                    break;
                } catch (Exception unused) {
                    return;
                }
            case 2:
                U4.d dVar = ((C0087k) obj2).f715e;
                if (dVar != null) {
                    dVar.openAnime(((C0086j) obj).f703u);
                    break;
                }
                break;
            case 3:
                C4.r rVar = (C4.r) obj2;
                rVar.getClass();
                Class cls = App.f14424I ? CastMoviesActivityLeanBack.class : CastMoviesActivity.class;
                Activity activity = rVar.f767d;
                Intent intent = new Intent(activity, (Class<?>) cls);
                C0093q c0093q = (C0093q) obj;
                intent.putExtra("gender", c0093q.f762u.gender);
                intent.putExtra("name", c0093q.f762u.getName());
                intent.putExtra("id", c0093q.f762u.getId());
                intent.putExtra(MimeTypes.BASE_TYPE_IMAGE, c0093q.f762u.getImg_url());
                intent.putExtra("type", rVar.f768e);
                activity.startActivity(intent);
                break;
            case 4:
                C0098w c0098w = (C0098w) obj2;
                c0098w.getClass();
                C0097v c0097v = (C0097v) obj;
                App.getInstance().f14440s.edit().putInt(c0098w.f787d, c0097v.f782u.colorID).apply();
                Iterator it = c0098w.f788e.iterator();
                while (it.hasNext()) {
                    ((ColorItem) it.next()).isChecked = false;
                }
                c0097v.f782u.isChecked = true;
                DialogInterfaceC0839s dialogInterfaceC0839s = c0098w.f790g;
                if (dialogInterfaceC0839s != null) {
                    try {
                        dialogInterfaceC0839s.dismiss();
                    } catch (Exception unused2) {
                    }
                }
                c0098w.notifyDataSetChanged();
                break;
            case 5:
                U4.e eVar = ((C0101z) obj2).f801d;
                if (eVar != null) {
                    eVar.openDrama(((C0100y) obj).f795u);
                    break;
                }
                break;
            case 6:
                U4.e eVar2 = ((C4.B) obj2).f534d;
                if (eVar2 != null) {
                    eVar2.openDrama(((C4.A) obj).f528u);
                    break;
                }
                break;
            case 7:
                ((I) obj2).f568g.onLetterClicked(((H) obj).f562u);
                break;
            case 8:
                ((L) obj2).f575f.onFileClicked((File) obj);
                break;
            case 9:
                ((P) obj2).f591d.onMediaSelected(((O) obj).f585u);
                break;
            case 10:
                Activity activity2 = ((S) obj2).f604d;
                if (activity2 instanceof MainActivity) {
                    ((MainActivity) activity2).onNetworkClicked(((Q) obj).f601u);
                    break;
                }
                break;
            case 11:
                ((c0) obj2).f652e.openCategory(((b0) obj).f642u);
                break;
            case 12:
                e0 e0Var = (e0) obj2;
                d0 d0Var = (d0) obj;
                boolean equals = d0Var.f658u.type.equals("1");
                Activity activity3 = e0Var.f668d;
                if (!equals) {
                    C1191v1 c1191v1 = new C1191v1(activity3, d0Var.f659v);
                    if (d0Var.f658u.type.equals("3")) {
                        c1191v1.getMenuInflater().inflate(R.menu.history_menu_file, c1191v1.getMenu());
                    } else {
                        c1191v1.getMenuInflater().inflate(R.menu.history_menu, c1191v1.getMenu());
                    }
                    c1191v1.setOnMenuItemClickListener(new C0082f(e0Var, d0Var, c1191v1, 3));
                    c1191v1.show();
                    break;
                } else {
                    ((MyImportActivity) activity3).openItem(d0Var.f658u);
                    break;
                }
            case 13:
                g0 g0Var = (g0) obj;
                ((UserTorrentsActivity) ((h0) obj2).f691e).torrentClicked(g0Var.f682u);
                g0Var.f682u.clicked = true;
                g0Var.f684w.setAlpha(0.4f);
                g0Var.f685x.setAlpha(0.4f);
                break;
            case 14:
                i0 i0Var = (i0) obj;
                ((LinksActivity) ((j0) obj2).f713h).linkClicked(i0Var.f695u, false);
                i0Var.f695u.clicked = true;
                i0Var.f697w.setAlpha(0.4f);
                i0Var.f698x.setAlpha(0.4f);
                break;
            case 15:
                ((m0) obj2).f735d.onMediaSelected(((l0) obj).f728u);
                break;
            case 16:
                ((o0) obj2).f757d.onMediaSelected(((n0) obj).f748u);
                break;
            case 17:
                int i8 = DramaHomeActivity.f14580W;
                DramaHomeActivity dramaHomeActivity = (DramaHomeActivity) obj2;
                dramaHomeActivity.getClass();
                App.getInstance().f14439r.addDramaToFavorites((Drama) obj);
                AbstractC0995i.makeToast(dramaHomeActivity, "Added to Favorites", true);
                break;
            case 18:
                int i9 = MainActivity.f14747T;
                ((DialogInterfaceC0839s) obj).dismiss();
                new Handler().postDelayed(new RunnableC1890a0((MainActivity) obj2, 8), 1000L);
                break;
            case 19:
                int i10 = MainActivity.f14747T;
                MainActivity mainActivity = (MainActivity) obj2;
                mainActivity.getClass();
                App.getInstance().f14439r.addMovieFavorites((Movie) obj);
                AbstractC0995i.makeToast(mainActivity, "Added to Favorites", true);
                break;
            case 20:
                int i11 = SearchActivityTV.f14981I;
                SearchActivityTV searchActivityTV = (SearchActivityTV) obj2;
                searchActivityTV.getClass();
                Q4.d dVar2 = (Q4.d) obj;
                dVar2.dismiss();
                if (A.h.checkSelfPermission(searchActivityTV, "android.permission.WRITE_EXTERNAL_STORAGE") != -1) {
                    if (Build.VERSION.SDK_INT >= 26) {
                        canRequestPackageInstalls = searchActivityTV.getPackageManager().canRequestPackageInstalls();
                        if (!canRequestPackageInstalls) {
                            dVar2.dismiss();
                            Q4.d newInstance = Q4.d.newInstance(searchActivityTV, true);
                            newInstance.setTitle("Grant install Permission");
                            newInstance.setMessage("Please grant the Permission to install the Update");
                            newInstance.setButton1("Cancel", new o(newInstance, 12));
                            newInstance.setButton2("OK", new I0(searchActivityTV, i2));
                            newInstance.show(searchActivityTV.getFragmentManager(), "");
                            break;
                        }
                    }
                    SharedPreferences sharedPreferences = App.getInstance().f14440s;
                    String str = Constant.f16184b;
                    String string = sharedPreferences.getString("update_url", null);
                    if (string != null) {
                        new M0(searchActivityTV).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, string);
                        break;
                    }
                } else {
                    Toast.makeText(searchActivityTV.getBaseContext(), searchActivityTV.getString(R.string.please_grant_permissions_label), 1).show();
                    AbstractC1958d.requestPermissions(searchActivityTV, new String[]{"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"}, 1000);
                    break;
                }
                break;
            case 21:
                int i12 = WatchedAcvivity.f15295n;
                WatchedAcvivity watchedAcvivity = (WatchedAcvivity) obj2;
                watchedAcvivity.getClass();
                App.getInstance().f14439r.addMovieFavorites((Movie) obj);
                AbstractC0995i.makeToast(watchedAcvivity, "Added to Favorites", true);
                break;
            default:
                int i13 = AdultHistoryActivity.f15323v;
                AdultHistoryActivity adultHistoryActivity = (AdultHistoryActivity) obj2;
                adultHistoryActivity.getClass();
                App.getInstance().f14439r.addFavoritesAdult((AdultVideo) obj);
                AbstractC0995i.makeToast(adultHistoryActivity, "Added to Favorites", true);
                break;
        }
    }
}
