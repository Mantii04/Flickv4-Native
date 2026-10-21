package D2;

import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public interface k extends com.bumptech.glide.manager.l {
    C2.c getRequest();

    void getSize(j jVar);

    void onLoadCleared(Drawable drawable);

    void onLoadFailed(Drawable drawable);

    void onLoadStarted(Drawable drawable);

    void onResourceReady(Object obj, E2.d dVar);

    void removeCallback(j jVar);

    void setRequest(C2.c cVar);
}
