package x4;

import A.i;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import flix.com.vision.App;
import io.reactivex.functions.Consumer;
import java.util.ArrayDeque;
import java.util.ArrayList;

/* renamed from: x4.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C1848a implements Consumer {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20921b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ App f20922e;

    public /* synthetic */ C1848a(App app, int i2) {
        this.f20921b = i2;
        this.f20922e = app;
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        App app = this.f20922e;
        switch (this.f20921b) {
            case 0:
                ArrayList arrayList = App.f14430z;
                app.getClass();
                JsonArray asJsonArray = ((JsonElement) obj).getAsJsonArray();
                int i2 = 0;
                while (true) {
                    int size = asJsonArray.size();
                    ArrayDeque arrayDeque = app.f14443v;
                    if (i2 >= size) {
                        if (arrayDeque.size() <= 0) {
                            i.x(app.f14440s, "RD_CLEANED", true);
                            break;
                        } else {
                            app.deleteTorrentsRealDebrid((String) arrayDeque.pop());
                            break;
                        }
                    } else {
                        arrayDeque.add(asJsonArray.get(i2).getAsJsonObject().get("id").getAsString());
                        i2++;
                    }
                }
            case 1:
                ArrayDeque arrayDeque2 = app.f14443v;
                if (arrayDeque2.size() > 0) {
                    app.deleteTorrentsRealDebrid((String) arrayDeque2.pop());
                    break;
                }
                break;
            default:
                ArrayDeque arrayDeque3 = app.f14443v;
                try {
                    if (arrayDeque3.size() > 0) {
                        app.deleteTorrentsRealDebrid((String) arrayDeque3.pop());
                    } else {
                        app.f14440s.edit().putBoolean("RD_CLEANED", true).apply();
                    }
                    break;
                } catch (Exception unused) {
                    return;
                }
        }
    }
}
