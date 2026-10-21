package x4;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import flix.com.vision.App;
import io.reactivex.functions.Consumer;
import java.util.ArrayDeque;
import java.util.ArrayList;

/* renamed from: x4.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C1849b implements Consumer {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20923b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ App f20924e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ArrayDeque f20925f;

    public /* synthetic */ C1849b(App app, ArrayDeque arrayDeque, int i2) {
        this.f20923b = i2;
        this.f20924e = app;
        this.f20925f = arrayDeque;
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        ArrayDeque<String> arrayDeque = this.f20925f;
        App app = this.f20924e;
        switch (this.f20923b) {
            case 0:
                ArrayList arrayList = App.f14430z;
                app.getClass();
                if (arrayDeque.size() > 0) {
                    app.deleteTorrentsRealDebridNewNew(arrayDeque);
                    break;
                }
                break;
            default:
                ArrayList arrayList2 = App.f14430z;
                app.getClass();
                JsonArray asJsonArray = ((JsonElement) obj).getAsJsonArray();
                for (int i2 = 0; i2 < asJsonArray.size(); i2++) {
                    arrayDeque.add(asJsonArray.get(i2).getAsJsonObject().get("id").getAsString());
                }
                if (arrayDeque.size() > 0) {
                    app.deleteTorrentsRealDebridNewNew(arrayDeque);
                    break;
                }
                break;
        }
    }
}
