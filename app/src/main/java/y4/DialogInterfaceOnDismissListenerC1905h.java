package y4;

import android.content.DialogInterface;
import flix.com.vision.activities.AnimeSearchResultActivityClassic;

/* renamed from: y4.h, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class DialogInterfaceOnDismissListenerC1905h implements DialogInterface.OnDismissListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AnimeSearchResultActivityClassic f21233b;

    public DialogInterfaceOnDismissListenerC1905h(AnimeSearchResultActivityClassic animeSearchResultActivityClassic) {
        this.f21233b = animeSearchResultActivityClassic;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f21233b.finish();
    }
}
