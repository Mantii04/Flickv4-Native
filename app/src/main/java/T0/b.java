package T0;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.media3.common.text.Cue;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f3431a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f3432b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final StringBuilder f3433c = new StringBuilder();

    /* renamed from: d, reason: collision with root package name */
    public int f3434d;

    /* renamed from: e, reason: collision with root package name */
    public int f3435e;

    /* renamed from: f, reason: collision with root package name */
    public int f3436f;

    /* renamed from: g, reason: collision with root package name */
    public int f3437g;

    /* renamed from: h, reason: collision with root package name */
    public int f3438h;

    public b(int i2, int i7) {
        reset(i2);
        this.f3438h = i7;
    }

    public final SpannableString a() {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f3433c);
        int length = spannableStringBuilder.length();
        int i2 = -1;
        int i7 = -1;
        int i8 = -1;
        int i9 = -1;
        int i10 = 0;
        int i11 = 0;
        boolean z6 = false;
        while (true) {
            ArrayList arrayList = this.f3431a;
            if (i10 >= arrayList.size()) {
                break;
            }
            a aVar = (a) arrayList.get(i10);
            boolean z7 = aVar.f3429b;
            int i12 = aVar.f3428a;
            if (i12 != 8) {
                boolean z8 = i12 == 7;
                if (i12 != 7) {
                    i9 = c.f3440B[i12];
                }
                z6 = z8;
            }
            int i13 = aVar.f3430c;
            i10++;
            if (i13 != (i10 < arrayList.size() ? ((a) arrayList.get(i10)).f3430c : length)) {
                if (i2 != -1 && !z7) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), i2, i13, 33);
                    i2 = -1;
                } else if (i2 == -1 && z7) {
                    i2 = i13;
                }
                if (i7 != -1 && !z6) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), i7, i13, 33);
                    i7 = -1;
                } else if (i7 == -1 && z6) {
                    i7 = i13;
                }
                if (i9 != i8) {
                    if (i8 != -1) {
                        spannableStringBuilder.setSpan(new ForegroundColorSpan(i8), i11, i13, 33);
                    }
                    i8 = i9;
                    i11 = i13;
                }
            }
        }
        if (i2 != -1 && i2 != length) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i2, length, 33);
        }
        if (i7 != -1 && i7 != length) {
            spannableStringBuilder.setSpan(new StyleSpan(2), i7, length, 33);
        }
        if (i11 != length && i8 != -1) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i8), i11, length, 33);
        }
        return new SpannableString(spannableStringBuilder);
    }

    public void append(char c7) {
        StringBuilder sb = this.f3433c;
        if (sb.length() < 32) {
            sb.append(c7);
        }
    }

    public void backspace() {
        StringBuilder sb = this.f3433c;
        int length = sb.length();
        if (length > 0) {
            sb.delete(length - 1, length);
            ArrayList arrayList = this.f3431a;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                a aVar = (a) arrayList.get(size);
                int i2 = aVar.f3430c;
                if (i2 != length) {
                    return;
                }
                aVar.f3430c = i2 - 1;
            }
        }
    }

    public Cue build(int i2) {
        float f3;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int i7 = 0;
        while (true) {
            ArrayList arrayList = this.f3432b;
            if (i7 >= arrayList.size()) {
                break;
            }
            spannableStringBuilder.append((CharSequence) arrayList.get(i7));
            spannableStringBuilder.append('\n');
            i7++;
        }
        spannableStringBuilder.append((CharSequence) a());
        if (spannableStringBuilder.length() == 0) {
            return null;
        }
        int i8 = this.f3435e + this.f3436f;
        int length = (32 - i8) - spannableStringBuilder.length();
        int i9 = i8 - length;
        if (i2 == Integer.MIN_VALUE) {
            i2 = (this.f3437g != 2 || (Math.abs(i9) >= 3 && length >= 0)) ? (this.f3437g != 2 || i9 <= 0) ? 0 : 2 : 1;
        }
        if (i2 != 1) {
            if (i2 == 2) {
                i8 = 32 - length;
            }
            f3 = ((i8 / 32.0f) * 0.8f) + 0.1f;
        } else {
            f3 = 0.5f;
        }
        int i10 = this.f3434d;
        if (i10 > 7) {
            i10 -= 17;
        } else if (this.f3437g == 1) {
            i10 -= this.f3438h - 1;
        }
        return new Cue.Builder().setText(spannableStringBuilder).setTextAlignment(Layout.Alignment.ALIGN_NORMAL).setLine(i10, 1).setPosition(f3).setPositionAnchor(i2).build();
    }

    public boolean isEmpty() {
        return this.f3431a.isEmpty() && this.f3432b.isEmpty() && this.f3433c.length() == 0;
    }

    public void reset(int i2) {
        this.f3437g = i2;
        this.f3431a.clear();
        this.f3432b.clear();
        this.f3433c.setLength(0);
        this.f3434d = 15;
        this.f3435e = 0;
        this.f3436f = 0;
    }

    public void rollUp() {
        ArrayList arrayList = this.f3432b;
        arrayList.add(a());
        this.f3433c.setLength(0);
        this.f3431a.clear();
        int min = Math.min(this.f3438h, this.f3434d);
        while (arrayList.size() >= min) {
            arrayList.remove(0);
        }
    }

    public void setCaptionMode(int i2) {
        this.f3437g = i2;
    }

    public void setCaptionRowCount(int i2) {
        this.f3438h = i2;
    }

    public void setStyle(int i2, boolean z6) {
        this.f3431a.add(new a(i2, z6, this.f3433c.length()));
    }
}
