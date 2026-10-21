package x4;

import android.util.Log;
import androidx.media3.datasource.DataSchemeDataSource;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import flix.com.vision.App;
import flix.com.vision.activities.CastMoviesActivity;
import flix.com.vision.activities.FilterActivity;
import flix.com.vision.activities.LinksActivity;
import flix.com.vision.activities.MainActivity;
import flix.com.vision.activities.MovieDetailActivity;
import flix.com.vision.activities.MovieDetailActivityLeanBack;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;

/* renamed from: x4.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C1851d implements Consumer {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20928b;

    public /* synthetic */ C1851d(int i2) {
        this.f20928b = i2;
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        switch (this.f20928b) {
            case 0:
                ArrayList arrayList = App.f14430z;
                JsonObject asJsonObject = ((JsonElement) obj).getAsJsonObject();
                String asString = asJsonObject.get("status").getAsString();
                if (asString != null && asString.equals(FirebaseAnalytics.Param.SUCCESS)) {
                    JsonArray asJsonArray = asJsonObject.get(DataSchemeDataSource.SCHEME_DATA).getAsJsonObject().get("magnets").getAsJsonArray();
                    for (int i2 = 0; i2 < asJsonArray.size(); i2++) {
                        App.deleteMagnetsAllDebrid(asJsonArray.get(i2).getAsJsonObject().get("id").getAsLong() + "");
                    }
                    break;
                }
                break;
            case 1:
                ArrayList arrayList2 = App.f14430z;
                break;
            case 2:
                ArrayList arrayList3 = App.f14430z;
                ((JsonElement) obj).getAsJsonObject();
                break;
            case 3:
                int i7 = CastMoviesActivity.f14526G;
                break;
            case 4:
                int i8 = CastMoviesActivity.f14526G;
                Log.d("", "");
                break;
            case 5:
                int i9 = FilterActivity.f14667O;
                Log.d(MainActivity.class.toString(), "", (Throwable) obj);
                break;
            case 6:
                int i10 = LinksActivity.f14702b0;
                break;
            case 7:
                int i11 = LinksActivity.f14702b0;
                break;
            case 8:
                int i12 = LinksActivity.f14702b0;
                Log.d("Offcloud", "Cloud cleared successfully.");
                break;
            case 9:
                int i13 = MainActivity.f14747T;
                Log.d(MainActivity.class.toString(), "", (Throwable) obj);
                break;
            case 10:
                int i14 = MainActivity.f14747T;
                Log.d(MainActivity.class.toString(), "", (Throwable) obj);
                break;
            case 11:
                int i15 = MainActivity.f14747T;
                break;
            case 12:
                int i16 = MovieDetailActivity.f14792S0;
                Log.d(MovieDetailActivity.class.toString(), "", (Throwable) obj);
                break;
            case 13:
                int i17 = MovieDetailActivity.f14792S0;
                Log.d(MovieDetailActivity.class.toString(), "", (Throwable) obj);
                break;
            case 14:
                int i18 = MovieDetailActivity.f14792S0;
                Log.d(MovieDetailActivity.class.toString(), "", (Throwable) obj);
                break;
            case 15:
                int i19 = MovieDetailActivity.f14792S0;
                Log.d(MovieDetailActivity.class.toString(), "", (Throwable) obj);
                break;
            case 16:
                int i20 = MovieDetailActivity.f14792S0;
                Log.d(MovieDetailActivity.class.toString(), "", (Throwable) obj);
                break;
            case 17:
                int i21 = MovieDetailActivity.f14792S0;
                Log.d(MovieDetailActivity.class.toString(), "", (Throwable) obj);
                break;
            case 18:
                int i22 = MovieDetailActivity.f14792S0;
                break;
            case 19:
                int i23 = MovieDetailActivity.f14792S0;
                Log.d(MovieDetailActivity.class.toString(), "", (Throwable) obj);
                break;
            case 20:
                int i24 = MovieDetailActivity.f14792S0;
                Log.d(MovieDetailActivity.class.toString(), "", (Throwable) obj);
                break;
            case 21:
                int i25 = MovieDetailActivityLeanBack.f14880a1;
                Log.d(MovieDetailActivityLeanBack.class.toString(), "", (Throwable) obj);
                break;
            case 22:
                int i26 = MovieDetailActivityLeanBack.f14880a1;
                Log.d(MovieDetailActivityLeanBack.class.toString(), "", (Throwable) obj);
                break;
            case 23:
                int i27 = MovieDetailActivityLeanBack.f14880a1;
                Log.d(MovieDetailActivityLeanBack.class.toString(), "", (Throwable) obj);
                break;
            case 24:
                int i28 = MovieDetailActivityLeanBack.f14880a1;
                Log.d(MovieDetailActivityLeanBack.class.toString(), "", (Throwable) obj);
                break;
            case 25:
                int i29 = MovieDetailActivityLeanBack.f14880a1;
                Log.d(MovieDetailActivityLeanBack.class.toString(), "", (Throwable) obj);
                break;
            case 26:
                int i30 = MovieDetailActivityLeanBack.f14880a1;
                break;
            case 27:
                int i31 = MovieDetailActivityLeanBack.f14880a1;
                Log.d(MovieDetailActivityLeanBack.class.toString(), "", (Throwable) obj);
                break;
            case 28:
                int i32 = MovieDetailActivityLeanBack.f14880a1;
                Log.d(MovieDetailActivityLeanBack.class.toString(), "", (Throwable) obj);
                break;
            default:
                int i33 = MovieDetailActivityLeanBack.f14880a1;
                Log.d(MovieDetailActivityLeanBack.class.toString(), "", (Throwable) obj);
                break;
        }
    }
}
