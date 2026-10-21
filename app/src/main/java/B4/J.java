package B4;

import android.util.Log;
import flix.com.vision.activities.player.SimpleVideoPlayer;
import flix.com.vision.subtitles.OpenSubtitles;
import java.util.List;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* loaded from: classes2.dex */
public final class J implements Callback {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SimpleVideoPlayer f232b;

    public J(SimpleVideoPlayer simpleVideoPlayer) {
        this.f232b = simpleVideoPlayer;
    }

    @Override // retrofit2.Callback
    public void onFailure(Call<List<OpenSubtitles.Subtitle>> call, Throwable th) {
        SimpleVideoPlayer simpleVideoPlayer = this.f232b;
        simpleVideoPlayer.p();
        Log.e("Subtitles", "Failed to fetch subs: " + th.getMessage());
        simpleVideoPlayer.B();
        simpleVideoPlayer.f15631A0 = false;
        simpleVideoPlayer.f15639E0 = false;
    }

    @Override // retrofit2.Callback
    public void onResponse(Call<List<OpenSubtitles.Subtitle>> call, Response<List<OpenSubtitles.Subtitle>> response) {
        SimpleVideoPlayer simpleVideoPlayer = this.f232b;
        simpleVideoPlayer.p();
        if (!response.isSuccessful() || response.body() == null || response.body().isEmpty()) {
            simpleVideoPlayer.B();
        } else {
            simpleVideoPlayer.f15633B0.clear();
            simpleVideoPlayer.f15633B0.addAll(response.body());
            if (simpleVideoPlayer.f15631A0) {
                simpleVideoPlayer.E();
            } else if (simpleVideoPlayer.f15639E0) {
                simpleVideoPlayer.f15635C0 = 0;
                OpenSubtitles.Subtitle subtitle = (OpenSubtitles.Subtitle) simpleVideoPlayer.f15633B0.get(0);
                simpleVideoPlayer.D(true);
                new Thread(new A4.n(3, simpleVideoPlayer, subtitle)).start();
            }
        }
        simpleVideoPlayer.f15631A0 = false;
        simpleVideoPlayer.f15639E0 = false;
    }
}
