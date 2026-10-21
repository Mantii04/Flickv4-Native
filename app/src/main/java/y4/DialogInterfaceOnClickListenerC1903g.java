package y4;

import android.content.DialogInterface;
import flix.com.vision.activities.AnimeSearchResultActivityClassic;

/* renamed from: y4.g, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class DialogInterfaceOnClickListenerC1903g implements DialogInterface.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AnimeSearchResultActivityClassic f21229b;

    public DialogInterfaceOnClickListenerC1903g(AnimeSearchResultActivityClassic animeSearchResultActivityClassic) {
        this.f21229b = animeSearchResultActivityClassic;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i2) {
        dialogInterface.dismiss();
        this.f21229b.finish();
    }
}
