package j;

import M.AbstractC0158e;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: j.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1029l extends MenuInflater {

    /* renamed from: e, reason: collision with root package name */
    public static final Class[] f16922e;

    /* renamed from: f, reason: collision with root package name */
    public static final Class[] f16923f;

    /* renamed from: a, reason: collision with root package name */
    public final Object[] f16924a;

    /* renamed from: b, reason: collision with root package name */
    public final Object[] f16925b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f16926c;

    /* renamed from: d, reason: collision with root package name */
    public Object f16927d;

    static {
        Class[] clsArr = {Context.class};
        f16922e = clsArr;
        f16923f = clsArr;
    }

    public C1029l(Context context) {
        super(context);
        this.f16926c = context;
        Object[] objArr = {context};
        this.f16924a = objArr;
        this.f16925b = objArr;
    }

    public static Object a(Object obj) {
        return obj instanceof Activity ? obj : obj instanceof ContextWrapper ? a(((ContextWrapper) obj).getBaseContext()) : obj;
    }

    public final void b(XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Menu menu) {
        C1028k c1028k = new C1028k(this, menu);
        int eventType = xmlResourceParser.getEventType();
        while (true) {
            if (eventType == 2) {
                String name = xmlResourceParser.getName();
                if (!name.equals("menu")) {
                    throw new RuntimeException("Expecting menu, got ".concat(name));
                }
                eventType = xmlResourceParser.next();
            } else {
                eventType = xmlResourceParser.next();
                if (eventType == 1) {
                    break;
                }
            }
        }
        boolean z6 = false;
        boolean z7 = false;
        String str = null;
        while (!z6) {
            if (eventType == 1) {
                throw new RuntimeException("Unexpected end of document");
            }
            if (eventType != 2) {
                if (eventType == 3) {
                    String name2 = xmlResourceParser.getName();
                    if (z7 && name2.equals(str)) {
                        z7 = false;
                        str = null;
                    } else if (name2.equals("group")) {
                        c1028k.resetGroup();
                    } else if (name2.equals("item")) {
                        if (!c1028k.hasAddedItem()) {
                            AbstractC0158e abstractC0158e = c1028k.f16921z;
                            if (abstractC0158e == null || !abstractC0158e.hasSubMenu()) {
                                c1028k.addItem();
                            } else {
                                c1028k.addSubMenuItem();
                            }
                        }
                    } else if (name2.equals("menu")) {
                        z6 = true;
                    }
                }
            } else if (!z7) {
                String name3 = xmlResourceParser.getName();
                if (name3.equals("group")) {
                    c1028k.readGroup(attributeSet);
                } else if (name3.equals("item")) {
                    c1028k.readItem(attributeSet);
                } else if (name3.equals("menu")) {
                    b(xmlResourceParser, attributeSet, c1028k.addSubMenuItem());
                } else {
                    str = name3;
                    z7 = true;
                }
            }
            eventType = xmlResourceParser.next();
        }
    }

    @Override // android.view.MenuInflater
    public void inflate(int i2, Menu menu) {
        if (!(menu instanceof F.a)) {
            super.inflate(i2, menu);
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                try {
                    xmlResourceParser = this.f16926c.getResources().getLayout(i2);
                    b(xmlResourceParser, Xml.asAttributeSet(xmlResourceParser), menu);
                    xmlResourceParser.close();
                } catch (IOException e3) {
                    throw new InflateException("Error inflating menu XML", e3);
                }
            } catch (XmlPullParserException e7) {
                throw new InflateException("Error inflating menu XML", e7);
            }
        } catch (Throwable th) {
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
            throw th;
        }
    }
}
