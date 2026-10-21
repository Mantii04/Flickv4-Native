package J0;

import K3.E;
import S2.D;
import android.database.Cursor;
import android.text.Editable;
import android.util.Base64;
import android.util.Log;
import android.view.SurfaceView;
import androidx.media3.common.DebugViewProvider;
import androidx.media3.common.Player;
import androidx.media3.common.audio.DefaultGainProvider;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.cache.CacheKeyFactory;
import androidx.media3.exoplayer.audio.AudioOutput;
import androidx.media3.exoplayer.audio.AudioOutputProvider;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.google.android.material.textfield.TextInputLayout;
import d3.AbstractC0806a;
import flix.com.vision.App;
import flix.com.vision.activities.MovieDetailActivity;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final /* synthetic */ class g implements h, E, X2.c, P2.g, Response.Listener, Response.ErrorListener, a3.p, DebugViewProvider, ListenerSet.Event, DefaultGainProvider.FadeProvider, CacheKeyFactory {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1457b;

    public /* synthetic */ g(int i2) {
        this.f1457b = i2;
    }

    private final void b(VolleyError volleyError) {
    }

    public int a(Editable editable) {
        int i2 = TextInputLayout.f12859L0;
        if (editable != null) {
            return editable.length();
        }
        return 0;
    }

    @Override // a3.p
    public Object apply(Object obj) {
        Cursor cursor = (Cursor) obj;
        switch (this.f1457b) {
            case 11:
                return Boolean.valueOf(cursor.getCount() > 0);
            default:
                ArrayList arrayList = new ArrayList();
                while (cursor.moveToNext()) {
                    D priority = S2.E.builder().setBackendName(cursor.getString(1)).setPriority(AbstractC0806a.valueOf(cursor.getInt(2)));
                    String string = cursor.getString(3);
                    arrayList.add(priority.setExtras(string == null ? null : Base64.decode(string, 0)).build());
                }
                return arrayList;
        }
    }

    @Override // androidx.media3.datasource.cache.CacheKeyFactory
    public String buildCacheKey(DataSpec dataSpec) {
        return androidx.media3.datasource.cache.a.a(dataSpec);
    }

    @Override // J0.h
    public boolean evaluate(int i2, int i7, int i8, int i9, int i10) {
        switch (this.f1457b) {
            case 0:
                break;
            default:
                if ((i7 != 67 || i8 != 79 || i9 != 77 || (i10 != 77 && i2 != 2)) && (i7 != 77 || i8 != 76 || i9 != 76 || (i10 != 84 && i2 != 2))) {
                }
                break;
        }
        return false;
    }

    @Override // androidx.media3.common.DebugViewProvider
    public SurfaceView getDebugPreviewSurfaceView(int i2, int i7) {
        return androidx.media3.common.b.a(i2, i7);
    }

    @Override // androidx.media3.common.audio.DefaultGainProvider.FadeProvider
    public float getGainFactorAt(long j7, long j8) {
        float lambda$static$0;
        float lambda$static$1;
        float lambda$static$2;
        float lambda$static$3;
        switch (this.f1457b) {
            case 20:
                lambda$static$0 = DefaultGainProvider.lambda$static$0(j7, j8);
                return lambda$static$0;
            case 21:
                lambda$static$1 = DefaultGainProvider.lambda$static$1(j7, j8);
                return lambda$static$1;
            case 22:
                lambda$static$2 = DefaultGainProvider.lambda$static$2(j7, j8);
                return lambda$static$2;
            default:
                lambda$static$3 = DefaultGainProvider.lambda$static$3(j7, j8);
                return lambda$static$3;
        }
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        switch (this.f1457b) {
            case 19:
                ((Player.Listener) obj).onRenderedFirstFrame();
                break;
            case 25:
                ((AudioOutput.Listener) obj).onUnderrun();
                break;
            case 26:
                ((AudioOutput.Listener) obj).onReleased();
                break;
            case 27:
                ((AudioOutput.Listener) obj).onOffloadDataRequest();
                break;
            case 28:
                ((AudioOutput.Listener) obj).onOffloadPresentationEnded();
                break;
            default:
                ((AudioOutputProvider.Listener) obj).onFormatSupportChanged();
                break;
        }
    }

    @Override // com.android.volley.Response.ErrorListener
    public void onErrorResponse(VolleyError volleyError) {
        switch (this.f1457b) {
            case 8:
                break;
            case 9:
                volleyError.printStackTrace();
                break;
            case 10:
                volleyError.printStackTrace();
                break;
            case 11:
            case 12:
            default:
                Log.d(MovieDetailActivity.class.toString(), "", null);
                break;
            case 13:
                Log.d(MovieDetailActivity.class.toString(), "", null);
                break;
            case 14:
                Log.d(MovieDetailActivity.class.toString(), "", null);
                break;
            case 15:
                Log.d(MovieDetailActivity.class.toString(), "", null);
                break;
            case 16:
                Log.d(MovieDetailActivity.class.toString(), "", null);
                break;
        }
    }

    @Override // com.android.volley.Response.Listener
    public void onResponse(Object obj) {
        try {
            App.f14419D = ((JSONObject) obj).getJSONObject("images").getString("base_url");
            App.getInstance().f14440s.edit().putString("tmdb_base_url", App.f14419D).apply();
        } catch (JSONException e3) {
            e3.printStackTrace();
        }
    }

    @Override // P2.g
    public void onSchedule(Exception exc) {
    }
}
