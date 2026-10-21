package o4;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.thebluealliance.spectrum.R;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;

/* renamed from: o4.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class ViewOnClickListenerC1466c extends FrameLayout implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final EventBus f19135b;

    /* renamed from: e, reason: collision with root package name */
    public final ImageView f19136e;

    /* renamed from: f, reason: collision with root package name */
    public final int f19137f;

    /* renamed from: j, reason: collision with root package name */
    public boolean f19138j;

    /* renamed from: m, reason: collision with root package name */
    public int f19139m;

    public ViewOnClickListenerC1466c(Context context, int i2, boolean z6, EventBus eventBus) {
        super(context);
        this.f19139m = 0;
        this.f19137f = i2;
        this.f19138j = z6;
        this.f19135b = eventBus;
        b();
        eventBus.register(this);
        setOnClickListener(this);
        LayoutInflater.from(getContext()).inflate(R.layout.color_item, (ViewGroup) this, true);
        ImageView imageView = (ImageView) findViewById(R.id.selected_checkmark);
        this.f19136e = imageView;
        imageView.setColorFilter(AbstractC1467d.isColorDark(i2) ? -1 : -16777216);
        setChecked(this.f19138j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setItemCheckmarkAttributes(float f3) {
        this.f19136e.setAlpha(f3);
        this.f19136e.setScaleX(f3);
        this.f19136e.setScaleY(f3);
    }

    public final void b() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(-16777216);
        setForeground(new RippleDrawable(ColorStateList.valueOf(AbstractC1467d.getRippleColor(this.f19137f)), null, gradientDrawable));
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setShape(1);
        int i2 = this.f19139m;
        int i7 = this.f19137f;
        if (i2 != 0) {
            gradientDrawable2.setStroke(i2, AbstractC1467d.isColorDark(i7) ? -1 : -16777216);
        }
        gradientDrawable2.setColor(i7);
        setBackground(gradientDrawable2);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f19135b.post(new C1468e(this.f19137f));
    }

    @Subscribe
    public void onSelectedColorChanged(C1468e c1468e) {
        setChecked(c1468e.getSelectedColor() == this.f19137f);
    }

    public void setChecked(boolean z6) {
        boolean z7 = this.f19138j;
        this.f19138j = z6;
        if (!z7 && z6) {
            setItemCheckmarkAttributes(0.0f);
            this.f19136e.setVisibility(0);
            this.f19136e.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setDuration(250L).setListener(new C1464a(this)).start();
        } else if (!z7 || z6) {
            this.f19136e.setVisibility(z6 ? 0 : 4);
            setItemCheckmarkAttributes(1.0f);
        } else {
            this.f19136e.setVisibility(0);
            setItemCheckmarkAttributes(1.0f);
            this.f19136e.animate().alpha(0.0f).scaleX(0.0f).scaleY(0.0f).setDuration(250L).setListener(new C1465b(this)).start();
        }
    }

    public void setOutlineWidth(int i2) {
        this.f19139m = i2;
        b();
    }
}
