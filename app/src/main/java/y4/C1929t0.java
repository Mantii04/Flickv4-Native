package y4;

import com.google.gson.JsonElement;
import flix.com.vision.activities.MovieDetailActivity;
import flix.com.vision.utils.JsonUtils;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;

/* renamed from: y4.t0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1929t0 implements Consumer {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MovieDetailActivity f21288b;

    public C1929t0(MovieDetailActivity movieDetailActivity) {
        this.f21288b = movieDetailActivity;
    }

    @Override // io.reactivex.functions.Consumer
    public void accept(JsonElement jsonElement) throws Exception {
        ArrayList<String> parseSuggestions = JsonUtils.parseSuggestions(jsonElement);
        MovieDetailActivity movieDetailActivity = this.f21288b;
        movieDetailActivity.f14843e0.clearSuggestions();
        movieDetailActivity.f14843e0.addSuggestions(parseSuggestions);
    }
}
