package y4;

import com.google.gson.JsonElement;
import flix.com.vision.activities.SeriesDetailActivity;
import flix.com.vision.activities.SeriesDetailActivityLeanBack;
import flix.com.vision.utils.JsonUtils;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final /* synthetic */ class Q0 implements Consumer {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21163b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f21164e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ flix.com.vision.activities.base.a f21165f;

    public /* synthetic */ Q0(flix.com.vision.activities.base.a aVar, boolean z6, int i2) {
        this.f21163b = i2;
        this.f21165f = aVar;
        this.f21164e = z6;
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        JsonElement jsonElement = (JsonElement) obj;
        switch (this.f21163b) {
            case 0:
                SeriesDetailActivity seriesDetailActivity = (SeriesDetailActivity) this.f21165f;
                ArrayList arrayList = seriesDetailActivity.f15050u;
                arrayList.clear();
                arrayList.addAll(JsonUtils.parseListEpisode(jsonElement, this.f21164e));
                seriesDetailActivity.f15045p.notifyDataSetChanged();
                if (seriesDetailActivity.f15038F) {
                    seriesDetailActivity.f15038F = false;
                } else {
                    seriesDetailActivity.f15048s.smoothScrollToPosition(0);
                }
                if (arrayList.size() > 0) {
                    seriesDetailActivity.episodeHighlited(seriesDetailActivity.f15035C - 1);
                    break;
                }
                break;
            default:
                SeriesDetailActivityLeanBack seriesDetailActivityLeanBack = (SeriesDetailActivityLeanBack) this.f21165f;
                ArrayList arrayList2 = seriesDetailActivityLeanBack.f15074u;
                arrayList2.clear();
                arrayList2.addAll(JsonUtils.parseListEpisode(jsonElement, this.f21164e));
                seriesDetailActivityLeanBack.f15069p.notifyDataSetChanged();
                if (seriesDetailActivityLeanBack.f15062F) {
                    seriesDetailActivityLeanBack.f15062F = false;
                } else {
                    seriesDetailActivityLeanBack.f15072s.smoothScrollToPosition(0);
                }
                if (arrayList2.size() > 0) {
                    seriesDetailActivityLeanBack.episodeHighlited(seriesDetailActivityLeanBack.f15059C - 1);
                    break;
                }
                break;
        }
    }
}
