package flix.com.vision.activities.leanback.fragment;

import android.widget.ImageView;
import flix.com.vision.models.Movie;
import m4.InterfaceC1330i;
import me.grantland.widget.AutofitTextView;

/* loaded from: classes2.dex */
public final class c implements InterfaceC1330i {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Movie f15562a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f15563b;

    public c(d dVar, Movie movie) {
        this.f15563b = dVar;
        this.f15562a = movie;
    }

    @Override // m4.InterfaceC1330i
    public void onError(Exception exc) {
        d dVar = this.f15563b;
        AutofitTextView autofitTextView = dVar.f15573o0;
        if (autofitTextView != null) {
            autofitTextView.setVisibility(0);
        }
        AutofitTextView autofitTextView2 = dVar.f15573o0;
        if (autofitTextView2 != null) {
            autofitTextView2.setVisibility(8);
        }
    }

    @Override // m4.InterfaceC1330i
    public void onSuccess() {
        d dVar = this.f15563b;
        AutofitTextView autofitTextView = dVar.f15573o0;
        if (autofitTextView != null) {
            autofitTextView.setVisibility(8);
        }
        this.f15562a.is_title_logo_available = true;
        ImageView imageView = dVar.f15575q0;
        if (imageView != null) {
            imageView.setVisibility(0);
        }
    }
}
