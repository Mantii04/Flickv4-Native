package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.R;

/* loaded from: classes.dex */
public final class S implements LayoutInflater.Factory2 {

    /* renamed from: b, reason: collision with root package name */
    public final AbstractC0467i0 f6155b;

    public S(AbstractC0467i0 abstractC0467i0) {
        this.f6155b = abstractC0467i0;
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        boolean z6;
        s0 f3;
        boolean equals = FragmentContainerView.class.getName().equals(str);
        AbstractC0467i0 abstractC0467i0 = this.f6155b;
        if (equals) {
            return new FragmentContainerView(context, attributeSet, abstractC0467i0);
        }
        if ("fragment".equals(str)) {
            String attributeValue = attributeSet.getAttributeValue(null, "class");
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Fragment);
            if (attributeValue == null) {
                attributeValue = obtainStyledAttributes.getString(R.styleable.Fragment_android_name);
            }
            int resourceId = obtainStyledAttributes.getResourceId(R.styleable.Fragment_android_id, -1);
            String string = obtainStyledAttributes.getString(R.styleable.Fragment_android_tag);
            obtainStyledAttributes.recycle();
            if (attributeValue != null) {
                try {
                    z6 = C.class.isAssignableFrom(O.a(context.getClassLoader(), attributeValue));
                } catch (ClassNotFoundException unused) {
                    z6 = false;
                }
                if (z6) {
                    int id = view != null ? view.getId() : 0;
                    if (id == -1 && resourceId == -1 && string == null) {
                        throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
                    }
                    C findFragmentById = resourceId != -1 ? abstractC0467i0.findFragmentById(resourceId) : null;
                    if (findFragmentById == null && string != null) {
                        findFragmentById = abstractC0467i0.findFragmentByTag(string);
                    }
                    if (findFragmentById == null && id != -1) {
                        findFragmentById = abstractC0467i0.findFragmentById(id);
                    }
                    if (findFragmentById == null) {
                        findFragmentById = abstractC0467i0.getFragmentFactory().instantiate(context.getClassLoader(), attributeValue);
                        findFragmentById.f6095w = true;
                        findFragmentById.f6057F = resourceId != 0 ? resourceId : id;
                        findFragmentById.f6058G = id;
                        findFragmentById.f6059H = string;
                        findFragmentById.f6096x = true;
                        findFragmentById.f6053B = abstractC0467i0;
                        findFragmentById.f6054C = abstractC0467i0.getHost();
                        findFragmentById.onInflate(abstractC0467i0.getHost().f6150e, attributeSet, findFragmentById.f6083e);
                        f3 = abstractC0467i0.a(findFragmentById);
                        if (AbstractC0467i0.isLoggingEnabled(2)) {
                            Log.v("FragmentManager", "Fragment " + findFragmentById + " has been inflated via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                        }
                    } else {
                        if (findFragmentById.f6096x) {
                            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + attributeValue);
                        }
                        findFragmentById.f6096x = true;
                        findFragmentById.f6053B = abstractC0467i0;
                        findFragmentById.f6054C = abstractC0467i0.getHost();
                        findFragmentById.onInflate(abstractC0467i0.getHost().f6150e, attributeSet, findFragmentById.f6083e);
                        f3 = abstractC0467i0.f(findFragmentById);
                        if (AbstractC0467i0.isLoggingEnabled(2)) {
                            Log.v("FragmentManager", "Retained Fragment " + findFragmentById + " has been re-attached via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                        }
                    }
                    ViewGroup viewGroup = (ViewGroup) view;
                    g0.d.onFragmentTagUsage(findFragmentById, viewGroup);
                    findFragmentById.f6067P = viewGroup;
                    f3.k();
                    f3.j();
                    View view2 = findFragmentById.f6068Q;
                    if (view2 == null) {
                        throw new IllegalStateException(A.i.l("Fragment ", attributeValue, " did not create a view."));
                    }
                    if (resourceId != 0) {
                        view2.setId(resourceId);
                    }
                    if (findFragmentById.f6068Q.getTag() == null) {
                        findFragmentById.f6068Q.setTag(string);
                    }
                    findFragmentById.f6068Q.addOnAttachStateChangeListener(new Q(this, f3));
                    return findFragmentById.f6068Q;
                }
            }
        }
        return null;
    }
}
