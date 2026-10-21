package y4;

import android.content.DialogInterface;
import flix.com.vision.App;
import flix.com.vision.activities.AnimeHistoryActivity;

/* renamed from: y4.e, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class DialogInterfaceOnClickListenerC1899e implements DialogInterface.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AnimeHistoryActivity f21222b;

    public DialogInterfaceOnClickListenerC1899e(AnimeHistoryActivity animeHistoryActivity) {
        this.f21222b = animeHistoryActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i2) {
        dialogInterface.dismiss();
        AnimeHistoryActivity animeHistoryActivity = this.f21222b;
        animeHistoryActivity.f14476f.clear();
        animeHistoryActivity.f14477j.notifyDataSetChanged();
        App.getInstance().f14439r.clearHistory_Anime();
    }
}
