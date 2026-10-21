package androidx.constraintlayout.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;

/* loaded from: classes.dex */
public class Guideline extends View {

    /* renamed from: b, reason: collision with root package name */
    public boolean f5312b;

    public Guideline(Context context) {
        super(context);
        this.f5312b = true;
        super.setVisibility(8);
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    public void draw(Canvas canvas) {
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i7) {
        setMeasuredDimension(0, 0);
    }

    public void setFilterRedundantCalls(boolean z6) {
        this.f5312b = z6;
    }

    public void setGuidelineBegin(int i2) {
        e eVar = (e) getLayoutParams();
        if (this.f5312b && eVar.f5357a == i2) {
            return;
        }
        eVar.f5357a = i2;
        setLayoutParams(eVar);
    }

    public void setGuidelineEnd(int i2) {
        e eVar = (e) getLayoutParams();
        if (this.f5312b && eVar.f5359b == i2) {
            return;
        }
        eVar.f5359b = i2;
        setLayoutParams(eVar);
    }

    public void setGuidelinePercent(float f3) {
        e eVar = (e) getLayoutParams();
        if (this.f5312b && eVar.f5361c == f3) {
            return;
        }
        eVar.f5361c = f3;
        setLayoutParams(eVar);
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
    }

    public Guideline(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5312b = true;
        super.setVisibility(8);
    }
}
