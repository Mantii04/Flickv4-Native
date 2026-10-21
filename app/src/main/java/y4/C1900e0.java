package y4;

import android.util.Log;
import android.widget.Toast;
import com.google.gson.JsonElement;
import flix.com.vision.activities.MainActivity;
import flix.com.vision.utils.JsonUtils;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;

/* renamed from: y4.e0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C1900e0 implements Consumer {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21223b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MainActivity f21224e;

    public /* synthetic */ C1900e0(MainActivity mainActivity, int i2) {
        this.f21223b = i2;
        this.f21224e = mainActivity;
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        MainActivity mainActivity = this.f21224e;
        switch (this.f21223b) {
            case 0:
                Throwable th = (Throwable) obj;
                int i2 = MainActivity.f14747T;
                mainActivity.getClass();
                Toast.makeText(mainActivity, "Sync failed: " + th.getMessage(), 1).show();
                Log.e("Trakt", "Sync Error", th);
                break;
            default:
                int i7 = MainActivity.f14747T;
                mainActivity.getClass();
                ArrayList<String> parseSuggestions = JsonUtils.parseSuggestions((JsonElement) obj);
                mainActivity.f14783z.clearSuggestions();
                mainActivity.f14783z.addSuggestions(parseSuggestions);
                break;
        }
    }
}
