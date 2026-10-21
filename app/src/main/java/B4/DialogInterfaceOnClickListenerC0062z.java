package B4;

import android.content.DialogInterface;
import flix.com.vision.activities.player.SimpleVideoPlayer;
import flix.com.vision.bvp.BetterVideoPlayer;
import flix.com.vision.models.VideoSource;
import java.util.ArrayList;

/* renamed from: B4.z, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class DialogInterfaceOnClickListenerC0062z implements DialogInterface.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f294b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SimpleVideoPlayer f295e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ArrayList f296f;

    public /* synthetic */ DialogInterfaceOnClickListenerC0062z(SimpleVideoPlayer simpleVideoPlayer, ArrayList arrayList, int i2) {
        this.f294b = i2;
        this.f295e = simpleVideoPlayer;
        this.f296f = arrayList;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        switch (this.f294b) {
            case 0:
                SimpleVideoPlayer simpleVideoPlayer = this.f295e;
                simpleVideoPlayer.f15678e0 = null;
                simpleVideoPlayer.f15677e = true;
                simpleVideoPlayer.f15630A.isPlaying();
                simpleVideoPlayer.w();
                ArrayList arrayList = this.f296f;
                simpleVideoPlayer.y((VideoSource) arrayList.get(i2), false);
                simpleVideoPlayer.f15692o0 = ((VideoSource) arrayList.get(i2)).label;
                simpleVideoPlayer.f15691n0 = i2;
                simpleVideoPlayer.f15647I0 = false;
                dialogInterface.dismiss();
                simpleVideoPlayer.I();
                break;
            default:
                SimpleVideoPlayer simpleVideoPlayer2 = this.f295e;
                BetterVideoPlayer betterVideoPlayer = simpleVideoPlayer2.f15630A;
                ArrayList arrayList2 = this.f296f;
                betterVideoPlayer.setAudioTrack((K4.l) arrayList2.get(i2));
                dialogInterface.dismiss();
                try {
                    N4.a.Success(simpleVideoPlayer2, "Audio changed to " + ((K4.l) arrayList2.get(i2)).f1801c, null, 48, 0);
                    break;
                } catch (Exception unused) {
                    return;
                }
        }
    }
}
