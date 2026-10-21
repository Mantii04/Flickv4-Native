package e0;

import android.text.InputFilter;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.SparseArray;
import android.widget.TextView;

/* loaded from: classes.dex */
public final class i extends j {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f13920a;

    /* renamed from: b, reason: collision with root package name */
    public final f f13921b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f13922c = true;

    public i(TextView textView) {
        this.f13920a = textView;
        this.f13921b = new f(textView);
    }

    @Override // e0.j
    public final InputFilter[] a(InputFilter[] inputFilterArr) {
        if (!this.f13922c) {
            SparseArray sparseArray = new SparseArray(1);
            for (int i2 = 0; i2 < inputFilterArr.length; i2++) {
                InputFilter inputFilter = inputFilterArr[i2];
                if (inputFilter instanceof f) {
                    sparseArray.put(i2, inputFilter);
                }
            }
            if (sparseArray.size() == 0) {
                return inputFilterArr;
            }
            int length = inputFilterArr.length;
            InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length - sparseArray.size()];
            int i7 = 0;
            for (int i8 = 0; i8 < length; i8++) {
                if (sparseArray.indexOfKey(i8) < 0) {
                    inputFilterArr2[i7] = inputFilterArr[i8];
                    i7++;
                }
            }
            return inputFilterArr2;
        }
        int length2 = inputFilterArr.length;
        int i9 = 0;
        while (true) {
            f fVar = this.f13921b;
            if (i9 >= length2) {
                InputFilter[] inputFilterArr3 = new InputFilter[inputFilterArr.length + 1];
                System.arraycopy(inputFilterArr, 0, inputFilterArr3, 0, length2);
                inputFilterArr3[length2] = fVar;
                return inputFilterArr3;
            }
            if (inputFilterArr[i9] == fVar) {
                return inputFilterArr;
            }
            i9++;
        }
    }

    @Override // e0.j
    public final void b(boolean z6) {
        if (z6) {
            TextView textView = this.f13920a;
            textView.setTransformationMethod(d(textView.getTransformationMethod()));
        }
    }

    @Override // e0.j
    public final void c(boolean z6) {
        this.f13922c = z6;
        TextView textView = this.f13920a;
        textView.setTransformationMethod(d(textView.getTransformationMethod()));
        textView.setFilters(a(textView.getFilters()));
    }

    @Override // e0.j
    public final TransformationMethod d(TransformationMethod transformationMethod) {
        return this.f13922c ? transformationMethod instanceof o ? transformationMethod : transformationMethod instanceof PasswordTransformationMethod ? transformationMethod : new o(transformationMethod) : transformationMethod instanceof o ? ((o) transformationMethod).getOriginalTransformationMethod() : transformationMethod;
    }

    @Override // e0.j
    public boolean isEnabled() {
        return this.f13922c;
    }
}
