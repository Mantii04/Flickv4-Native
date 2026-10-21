package D2;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;

/* loaded from: classes.dex */
public abstract class h extends n implements E2.c {

    /* renamed from: j, reason: collision with root package name */
    public Animatable f879j;

    public h(ImageView imageView) {
        super(imageView);
    }

    @Override // D2.n, D2.a, D2.k
    public void onLoadCleared(Drawable drawable) {
        super.onLoadCleared(drawable);
        Animatable animatable = this.f879j;
        if (animatable != null) {
            animatable.stop();
        }
        setResource(null);
        this.f879j = null;
        setDrawable(drawable);
    }

    @Override // D2.a, D2.k
    public void onLoadFailed(Drawable drawable) {
        super.onLoadFailed(drawable);
        setResource(null);
        this.f879j = null;
        setDrawable(drawable);
    }

    @Override // D2.n, D2.a, D2.k
    public void onLoadStarted(Drawable drawable) {
        super.onLoadStarted(drawable);
        setResource(null);
        this.f879j = null;
        setDrawable(drawable);
    }

    @Override // D2.k
    public void onResourceReady(Object obj, E2.d dVar) {
        if (dVar != null && ((E2.b) dVar).transition(obj, this)) {
            if (!(obj instanceof Animatable)) {
                this.f879j = null;
                return;
            }
            Animatable animatable = (Animatable) obj;
            this.f879j = animatable;
            animatable.start();
            return;
        }
        setResource(obj);
        if (!(obj instanceof Animatable)) {
            this.f879j = null;
            return;
        }
        Animatable animatable2 = (Animatable) obj;
        this.f879j = animatable2;
        animatable2.start();
    }

    @Override // com.bumptech.glide.manager.l
    public void onStart() {
        Animatable animatable = this.f879j;
        if (animatable != null) {
            animatable.start();
        }
    }

    @Override // com.bumptech.glide.manager.l
    public void onStop() {
        Animatable animatable = this.f879j;
        if (animatable != null) {
            animatable.stop();
        }
    }

    public void setDrawable(Drawable drawable) {
        ((ImageView) this.f886b).setImageDrawable(drawable);
    }

    public abstract void setResource(Object obj);
}
