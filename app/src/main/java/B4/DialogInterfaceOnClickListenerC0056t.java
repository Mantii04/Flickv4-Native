package B4;

import android.content.DialogInterface;
import flix.com.vision.App;
import flix.com.vision.activities.player.SimpleVideoPlayer;
import flix.com.vision.bvp.BetterVideoPlayer;
import flix.com.vision.subtitles.OpenSubtitles;
import h5.AbstractC0995i;
import org.apache.commons.lang3.StringUtils;

/* renamed from: B4.t, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class DialogInterfaceOnClickListenerC0056t implements DialogInterface.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f278b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SimpleVideoPlayer f279e;

    public /* synthetic */ DialogInterfaceOnClickListenerC0056t(SimpleVideoPlayer simpleVideoPlayer, int i2) {
        this.f278b = i2;
        this.f279e = simpleVideoPlayer;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        SimpleVideoPlayer simpleVideoPlayer = this.f279e;
        switch (this.f278b) {
            case 0:
                simpleVideoPlayer.f15635C0 = i2;
                dialogInterface.dismiss();
                simpleVideoPlayer.f15637D0 = false;
                OpenSubtitles.Subtitle subtitle = (OpenSubtitles.Subtitle) simpleVideoPlayer.f15633B0.get(simpleVideoPlayer.f15635C0);
                simpleVideoPlayer.D(true);
                new Thread(new A4.n(3, simpleVideoPlayer, subtitle)).start();
                break;
            case 1:
                boolean z6 = SimpleVideoPlayer.f15629Q0;
                simpleVideoPlayer.getClass();
                App.getInstance().f14440s.edit().putInt("pref_subtitle_size", i2).apply();
                dialogInterface.dismiss();
                simpleVideoPlayer.J(App.getInstance().f14440s.getInt("pref_subtitle_size", 3));
                break;
            default:
                boolean z7 = SimpleVideoPlayer.f15629Q0;
                simpleVideoPlayer.getClass();
                try {
                    App.getInstance().f14440s.edit().putInt("pref_subtitle_encoding_index", i2).apply();
                    dialogInterface.dismiss();
                    if (i2 > 0) {
                        String charSequence = simpleVideoPlayer.f15657N0[i2].toString();
                        String trim = charSequence.split(StringUtils.SPACE)[charSequence.split(StringUtils.SPACE).length - 1].trim();
                        App.getInstance().f14440s.edit().putString("pref_subtitle_encoding_label", trim).apply();
                        BetterVideoPlayer betterVideoPlayer = simpleVideoPlayer.f15630A;
                        if (betterVideoPlayer != null && betterVideoPlayer.isCaptionActive()) {
                            simpleVideoPlayer.f15630A.changeEncoding(trim);
                            AbstractC0995i.makeToast(simpleVideoPlayer, "Subtitle Encoding changed to " + trim, true);
                        }
                    } else {
                        App.getInstance().f14440s.edit().putString("pref_subtitle_encoding_label", "utf-8").apply();
                        BetterVideoPlayer betterVideoPlayer2 = simpleVideoPlayer.f15630A;
                        if (betterVideoPlayer2 != null && betterVideoPlayer2.isCaptionActive()) {
                            simpleVideoPlayer.f15630A.changeEncoding("utf-8");
                            AbstractC0995i.makeToast(simpleVideoPlayer, "Subtitle Encoding changed to Default (utf-8)", true);
                        }
                    }
                    break;
                } catch (Exception unused) {
                    return;
                }
                break;
        }
    }
}
