package B4;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import flix.com.vision.activities.player.SimpleVideoPlayer;
import flix.com.vision.models.IntroDbResponse;
import flix.com.vision.models.VideoSource;
import flix.com.vision.utils.JsonUtils;
import io.reactivex.functions.Consumer;

/* renamed from: B4.v, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0058v implements Consumer {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f282b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SimpleVideoPlayer f283e;

    public /* synthetic */ C0058v(SimpleVideoPlayer simpleVideoPlayer, int i2) {
        this.f282b = i2;
        this.f283e = simpleVideoPlayer;
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        SimpleVideoPlayer simpleVideoPlayer = this.f283e;
        JsonElement jsonElement = (JsonElement) obj;
        switch (this.f282b) {
            case 0:
                boolean z6 = SimpleVideoPlayer.f15629Q0;
                simpleVideoPlayer.getClass();
                if (jsonElement != null) {
                    IntroDbResponse introDbResponse = new IntroDbResponse();
                    try {
                        introDbResponse = (IntroDbResponse) new Gson().fromJson(jsonElement, IntroDbResponse.class);
                    } catch (Exception unused) {
                    }
                    IntroDbResponse.Segment segment = introDbResponse.intro;
                    if (segment != null && segment.confidence > 0.5d) {
                        simpleVideoPlayer.f15661P0 = segment;
                        simpleVideoPlayer.f15659O0 = introDbResponse.outro;
                        break;
                    }
                }
                break;
            default:
                boolean z7 = SimpleVideoPlayer.f15629Q0;
                simpleVideoPlayer.getClass();
                VideoSource parseRDVideo = JsonUtils.parseRDVideo(jsonElement);
                if (parseRDVideo != null) {
                    simpleVideoPlayer.OnSuccess(parseRDVideo);
                    break;
                }
                break;
        }
    }
}
