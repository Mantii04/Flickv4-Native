package androidx.leanback.widget.picker;

import M.AbstractC0181p0;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import android.util.Log;
import androidx.leanback.R;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Locale;
import k0.RunnableC1086a;
import k0.e;
import k0.f;
import k0.g;
import k0.h;

/* loaded from: classes.dex */
public class DatePicker extends e {

    /* renamed from: L, reason: collision with root package name */
    public static final int[] f6882L = {5, 2, 1};

    /* renamed from: A, reason: collision with root package name */
    public f f6883A;

    /* renamed from: B, reason: collision with root package name */
    public f f6884B;

    /* renamed from: C, reason: collision with root package name */
    public int f6885C;

    /* renamed from: D, reason: collision with root package name */
    public int f6886D;

    /* renamed from: E, reason: collision with root package name */
    public int f6887E;

    /* renamed from: F, reason: collision with root package name */
    public final SimpleDateFormat f6888F;

    /* renamed from: G, reason: collision with root package name */
    public final g f6889G;

    /* renamed from: H, reason: collision with root package name */
    public final Calendar f6890H;

    /* renamed from: I, reason: collision with root package name */
    public final Calendar f6891I;

    /* renamed from: J, reason: collision with root package name */
    public final Calendar f6892J;

    /* renamed from: K, reason: collision with root package name */
    public final Calendar f6893K;

    /* renamed from: y, reason: collision with root package name */
    public String f6894y;

    /* renamed from: z, reason: collision with root package name */
    public f f6895z;

    public DatePicker(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.datePickerStyle);
    }

    public final boolean f(Calendar calendar, String str) {
        try {
            calendar.setTime(this.f6888F.parse(str));
            return true;
        } catch (ParseException unused) {
            Log.w("DatePicker", "Date: " + str + " not in format: MM/dd/yyyy");
            return false;
        }
    }

    public long getDate() {
        return this.f6892J.getTimeInMillis();
    }

    public String getDatePickerFormat() {
        return this.f6894y;
    }

    public long getMaxDate() {
        return this.f6891I.getTimeInMillis();
    }

    public long getMinDate() {
        return this.f6890H.getTimeInMillis();
    }

    @Override // k0.e
    public final void onColumnValueChanged(int i2, int i7) {
        this.f6893K.setTimeInMillis(this.f6892J.getTimeInMillis());
        int currentValue = getColumnAt(i2).getCurrentValue();
        if (i2 == this.f6886D) {
            this.f6893K.add(5, i7 - currentValue);
        } else if (i2 == this.f6885C) {
            this.f6893K.add(2, i7 - currentValue);
        } else {
            if (i2 != this.f6887E) {
                throw new IllegalArgumentException();
            }
            this.f6893K.add(1, i7 - currentValue);
        }
        setDate(this.f6893K.get(1), this.f6893K.get(2), this.f6893K.get(5), false);
    }

    public void setDate(long j7) {
        this.f6893K.setTimeInMillis(j7);
        setDate(this.f6893K.get(1), this.f6893K.get(2), this.f6893K.get(5), false);
    }

    public void setDatePickerFormat(String str) {
        int i2 = 6;
        g gVar = this.f6889G;
        String str2 = TextUtils.isEmpty(str) ? new String(DateFormat.getDateFormatOrder(getContext())) : str;
        if (TextUtils.equals(this.f6894y, str2)) {
            return;
        }
        this.f6894y = str2;
        String bestDateTimePattern = DateFormat.getBestDateTimePattern(gVar.f17246a, str2);
        if (TextUtils.isEmpty(bestDateTimePattern)) {
            bestDateTimePattern = "MM/dd/yyyy";
        }
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        char[] cArr = {'Y', 'y', 'M', 'm', 'D', 'd'};
        int i7 = 0;
        boolean z6 = false;
        char c7 = 0;
        while (i7 < bestDateTimePattern.length()) {
            char charAt = bestDateTimePattern.charAt(i7);
            if (charAt != ' ') {
                if (charAt != '\'') {
                    if (!z6) {
                        int i8 = 0;
                        while (true) {
                            if (i8 >= i2) {
                                sb.append(charAt);
                                break;
                            } else if (charAt != cArr[i8]) {
                                i8++;
                                i2 = 6;
                            } else if (charAt != c7) {
                                arrayList.add(sb.toString());
                                sb.setLength(0);
                            }
                        }
                    } else {
                        sb.append(charAt);
                    }
                    c7 = charAt;
                } else if (z6) {
                    z6 = false;
                } else {
                    sb.setLength(0);
                    z6 = true;
                }
            }
            i7++;
            i2 = 6;
        }
        arrayList.add(sb.toString());
        if (arrayList.size() != str2.length() + 1) {
            throw new IllegalStateException("Separators size: " + arrayList.size() + " must equal the size of datePickerFormat: " + str2.length() + " + 1");
        }
        setSeparators(arrayList);
        this.f6883A = null;
        this.f6895z = null;
        this.f6884B = null;
        this.f6885C = -1;
        this.f6886D = -1;
        this.f6887E = -1;
        String upperCase = str2.toUpperCase(gVar.f17246a);
        ArrayList arrayList2 = new ArrayList(3);
        for (int i9 = 0; i9 < upperCase.length(); i9++) {
            char charAt2 = upperCase.charAt(i9);
            if (charAt2 == 'D') {
                if (this.f6883A != null) {
                    throw new IllegalArgumentException("datePicker format error");
                }
                f fVar = new f();
                this.f6883A = fVar;
                arrayList2.add(fVar);
                this.f6883A.setLabelFormat("%02d");
                this.f6886D = i9;
            } else if (charAt2 != 'M') {
                if (charAt2 != 'Y') {
                    throw new IllegalArgumentException("datePicker format error");
                }
                if (this.f6884B != null) {
                    throw new IllegalArgumentException("datePicker format error");
                }
                f fVar2 = new f();
                this.f6884B = fVar2;
                arrayList2.add(fVar2);
                this.f6887E = i9;
                this.f6884B.setLabelFormat("%d");
            } else {
                if (this.f6895z != null) {
                    throw new IllegalArgumentException("datePicker format error");
                }
                f fVar3 = new f();
                this.f6895z = fVar3;
                arrayList2.add(fVar3);
                this.f6895z.setStaticLabels(gVar.f17247b);
                this.f6885C = i9;
            }
        }
        setColumns(arrayList2);
        post(new RunnableC1086a(this, false));
    }

    public void setMaxDate(long j7) {
        this.f6893K.setTimeInMillis(j7);
        if (this.f6893K.get(1) != this.f6891I.get(1) || this.f6893K.get(6) == this.f6891I.get(6)) {
            this.f6891I.setTimeInMillis(j7);
            if (this.f6892J.after(this.f6891I)) {
                this.f6892J.setTimeInMillis(this.f6891I.getTimeInMillis());
            }
            post(new RunnableC1086a(this, false));
        }
    }

    public void setMinDate(long j7) {
        this.f6893K.setTimeInMillis(j7);
        if (this.f6893K.get(1) != this.f6890H.get(1) || this.f6893K.get(6) == this.f6890H.get(6)) {
            this.f6890H.setTimeInMillis(j7);
            if (this.f6892J.before(this.f6890H)) {
                this.f6892J.setTimeInMillis(this.f6890H.getTimeInMillis());
            }
            post(new RunnableC1086a(this, false));
        }
    }

    @SuppressLint({"CustomViewStyleable"})
    public DatePicker(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f6888F = new SimpleDateFormat("MM/dd/yyyy", Locale.getDefault());
        g dateConstantInstance = h.getDateConstantInstance(Locale.getDefault(), getContext().getResources());
        this.f6889G = dateConstantInstance;
        this.f6893K = h.getCalendarForLocale(this.f6893K, dateConstantInstance.f17246a);
        this.f6890H = h.getCalendarForLocale(this.f6890H, this.f6889G.f17246a);
        this.f6891I = h.getCalendarForLocale(this.f6891I, this.f6889G.f17246a);
        this.f6892J = h.getCalendarForLocale(this.f6892J, this.f6889G.f17246a);
        f fVar = this.f6895z;
        if (fVar != null) {
            fVar.setStaticLabels(this.f6889G.f17247b);
            setColumnAt(this.f6885C, this.f6895z);
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.lbDatePicker);
        AbstractC0181p0.saveAttributeDataForStyleable(this, context, R.styleable.lbDatePicker, attributeSet, obtainStyledAttributes, 0, 0);
        try {
            String string = obtainStyledAttributes.getString(R.styleable.lbDatePicker_android_minDate);
            String string2 = obtainStyledAttributes.getString(R.styleable.lbDatePicker_android_maxDate);
            String string3 = obtainStyledAttributes.getString(R.styleable.lbDatePicker_datePickerFormat);
            obtainStyledAttributes.recycle();
            this.f6893K.clear();
            if (TextUtils.isEmpty(string)) {
                this.f6893K.set(1900, 0, 1);
            } else if (!f(this.f6893K, string)) {
                this.f6893K.set(1900, 0, 1);
            }
            this.f6890H.setTimeInMillis(this.f6893K.getTimeInMillis());
            this.f6893K.clear();
            if (TextUtils.isEmpty(string2)) {
                this.f6893K.set(2100, 0, 1);
            } else if (!f(this.f6893K, string2)) {
                this.f6893K.set(2100, 0, 1);
            }
            this.f6891I.setTimeInMillis(this.f6893K.getTimeInMillis());
            setDatePickerFormat(TextUtils.isEmpty(string3) ? new String(DateFormat.getDateFormatOrder(context)) : string3);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    public void setDate(int i2, int i7, int i8, boolean z6) {
        if (this.f6892J.get(1) == i2 && this.f6892J.get(2) == i8 && this.f6892J.get(5) == i7) {
            return;
        }
        this.f6892J.set(i2, i7, i8);
        if (this.f6892J.before(this.f6890H)) {
            this.f6892J.setTimeInMillis(this.f6890H.getTimeInMillis());
        } else if (this.f6892J.after(this.f6891I)) {
            this.f6892J.setTimeInMillis(this.f6891I.getTimeInMillis());
        }
        post(new RunnableC1086a(this, z6));
    }
}
