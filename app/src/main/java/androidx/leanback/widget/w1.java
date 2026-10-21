package androidx.leanback.widget;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public abstract class w1 extends EditText {

    /* renamed from: n, reason: collision with root package name */
    public static final Pattern f6916n = Pattern.compile("\\S+");

    /* renamed from: p, reason: collision with root package name */
    public static final u1 f6917p = new u1(Integer.class, "streamPosition");

    /* renamed from: b, reason: collision with root package name */
    public final Random f6918b;

    /* renamed from: e, reason: collision with root package name */
    public Bitmap f6919e;

    /* renamed from: f, reason: collision with root package name */
    public Bitmap f6920f;

    /* renamed from: j, reason: collision with root package name */
    public int f6921j;

    /* renamed from: m, reason: collision with root package name */
    public ObjectAnimator f6922m;

    public w1(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f6918b = new Random();
    }

    public static boolean isLayoutRtl(View view) {
        return 1 == view.getLayoutDirection();
    }

    public int getStreamPosition() {
        return this.f6921j;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f6919e = Bitmap.createScaledBitmap(BitmapFactory.decodeResource(getResources(), androidx.leanback.R.drawable.lb_text_dot_one), (int) (r0.getWidth() * 1.3f), (int) (r0.getHeight() * 1.3f), false);
        this.f6920f = Bitmap.createScaledBitmap(BitmapFactory.decodeResource(getResources(), androidx.leanback.R.drawable.lb_text_dot_two), (int) (r0.getWidth() * 1.3f), (int) (r0.getHeight() * 1.3f), false);
        reset();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.leanback.widget.StreamingTextView");
    }

    public void reset() {
        this.f6921j = -1;
        ObjectAnimator objectAnimator = this.f6922m;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        setText("");
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(S.A.wrapCustomSelectionActionModeCallback(this, callback));
    }

    public void setFinalRecognizedText(CharSequence charSequence) {
        setText(charSequence);
        bringPointIntoView(length());
    }

    public void setStreamPosition(int i2) {
        this.f6921j = i2;
        invalidate();
    }

    public void updateRecognizedText(String str, String str2) {
        if (str == null) {
            str = "";
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        if (str2 != null) {
            int length = spannableStringBuilder.length();
            spannableStringBuilder.append((CharSequence) str2);
            Matcher matcher = f6916n.matcher(str2);
            while (matcher.find()) {
                int start = matcher.start() + length;
                spannableStringBuilder.setSpan(new v1(this, str2.charAt(matcher.start()), start), start, matcher.end() + length, 33);
            }
        }
        this.f6921j = Math.max(str.length(), this.f6921j);
        setText(new SpannedString(spannableStringBuilder));
        bringPointIntoView(length());
        ObjectAnimator objectAnimator = this.f6922m;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        int streamPosition = getStreamPosition();
        int length2 = length();
        int i2 = length2 - streamPosition;
        if (i2 > 0) {
            if (this.f6922m == null) {
                ObjectAnimator objectAnimator2 = new ObjectAnimator();
                this.f6922m = objectAnimator2;
                objectAnimator2.setTarget(this);
                this.f6922m.setProperty(f6917p);
            }
            this.f6922m.setIntValues(streamPosition, length2);
            this.f6922m.setDuration(i2 * 50);
            this.f6922m.start();
        }
    }
}
