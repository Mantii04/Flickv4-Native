package com.bumptech.glide;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import l2.InterfaceC1220a;
import l2.InterfaceC1222c;
import l2.s;
import n2.C1388J;
import n2.C1410o;
import n2.InterfaceC1391M;
import r2.C1566Z;
import r2.InterfaceC1562V;
import r2.InterfaceC1563W;
import z2.C1990g;
import z2.InterfaceC1988e;

/* loaded from: classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public final C1566Z f9163a;

    /* renamed from: b, reason: collision with root package name */
    public final B2.b f9164b;

    /* renamed from: c, reason: collision with root package name */
    public final B2.g f9165c;

    /* renamed from: d, reason: collision with root package name */
    public final B2.i f9166d;

    /* renamed from: e, reason: collision with root package name */
    public final com.bumptech.glide.load.data.j f9167e;

    /* renamed from: f, reason: collision with root package name */
    public final C1990g f9168f;

    /* renamed from: g, reason: collision with root package name */
    public final B2.c f9169g;

    /* renamed from: h, reason: collision with root package name */
    public final B2.e f9170h = new B2.e();

    /* renamed from: i, reason: collision with root package name */
    public final B2.d f9171i = new B2.d();

    /* renamed from: j, reason: collision with root package name */
    public final L.e f9172j;

    public j() {
        L.e threadSafeList = H2.h.threadSafeList();
        this.f9172j = threadSafeList;
        this.f9163a = new C1566Z(threadSafeList);
        this.f9164b = new B2.b();
        this.f9165c = new B2.g();
        this.f9166d = new B2.i();
        this.f9167e = new com.bumptech.glide.load.data.j();
        this.f9168f = new C1990g();
        this.f9169g = new B2.c();
        setResourceDecoderBucketPriorityList(Arrays.asList("Animation", "Bitmap", "BitmapDrawable"));
    }

    public <Data> j append(Class<Data> cls, InterfaceC1220a interfaceC1220a) {
        this.f9164b.append(cls, interfaceC1220a);
        return this;
    }

    public List<InterfaceC1222c> getImageHeaderParsers() {
        List<InterfaceC1222c> parsers = this.f9169g.getParsers();
        if (parsers.isEmpty()) {
            throw new Registry$MissingComponentException() { // from class: com.bumptech.glide.Registry$NoImageHeaderParserException
            };
        }
        return parsers;
    }

    public <Data, TResource, Transcode> C1388J getLoadPath(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        Class<Data> cls4;
        Class<TResource> cls5;
        Class<Transcode> cls6;
        Class<Data> cls7 = cls;
        B2.d dVar = this.f9171i;
        C1388J c1388j = dVar.get(cls7, cls2, cls3);
        C1388J c1388j2 = null;
        if (dVar.isEmptyLoadPath(c1388j)) {
            return null;
        }
        if (c1388j != null) {
            return c1388j;
        }
        ArrayList arrayList = new ArrayList();
        B2.g gVar = this.f9165c;
        for (Class cls8 : gVar.getResourceClasses(cls7, cls2)) {
            C1990g c1990g = this.f9168f;
            for (Class cls9 : c1990g.getTranscodeClasses(cls8, cls3)) {
                arrayList.add(new C1410o(cls7, cls8, cls9, gVar.getDecoders(cls7, cls8), c1990g.get(cls8, cls9), this.f9172j));
                cls7 = cls;
            }
            cls7 = cls;
        }
        if (arrayList.isEmpty()) {
            cls4 = cls;
            cls5 = cls2;
            cls6 = cls3;
        } else {
            cls4 = cls;
            cls5 = cls2;
            cls6 = cls3;
            c1388j2 = new C1388J(cls4, cls5, cls6, arrayList, this.f9172j);
        }
        dVar.put(cls4, cls5, cls6, c1388j2);
        return c1388j2;
    }

    public <Model> List<InterfaceC1562V> getModelLoaders(Model model) {
        return this.f9163a.getModelLoaders(model);
    }

    public <Model, TResource, Transcode> List<Class<?>> getRegisteredResourceClasses(Class<Model> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        B2.e eVar = this.f9170h;
        List<Class<?>> list = eVar.get(cls, cls2, cls3);
        List<Class<?>> list2 = list;
        if (list == null) {
            ArrayList arrayList = new ArrayList();
            Iterator<Class<?>> it = this.f9163a.getDataClasses(cls).iterator();
            while (it.hasNext()) {
                for (Class cls4 : this.f9165c.getResourceClasses(it.next(), cls2)) {
                    if (!this.f9168f.getTranscodeClasses(cls4, cls3).isEmpty() && !arrayList.contains(cls4)) {
                        arrayList.add(cls4);
                    }
                }
            }
            eVar.put(cls, cls2, cls3, Collections.unmodifiableList(arrayList));
            list2 = arrayList;
        }
        return list2;
    }

    public <X> s getResultEncoder(InterfaceC1391M interfaceC1391M) throws Registry$NoResultEncoderAvailableException {
        s sVar = this.f9166d.get(interfaceC1391M.getResourceClass());
        if (sVar != null) {
            return sVar;
        }
        throw new Registry$NoResultEncoderAvailableException(interfaceC1391M.getResourceClass());
    }

    public <X> com.bumptech.glide.load.data.g getRewinder(X x6) {
        return this.f9167e.build(x6);
    }

    public <X> InterfaceC1220a getSourceEncoder(X x6) throws Registry$NoSourceEncoderAvailableException {
        InterfaceC1220a encoder = this.f9164b.getEncoder(x6.getClass());
        if (encoder != null) {
            return encoder;
        }
        final Class<?> cls = x6.getClass();
        throw new Registry$MissingComponentException(cls) { // from class: com.bumptech.glide.Registry$NoSourceEncoderAvailableException
            {
                super("Failed to find source encoder for data class: " + cls);
            }
        };
    }

    public boolean isResourceEncoderAvailable(InterfaceC1391M interfaceC1391M) {
        return this.f9166d.get(interfaceC1391M.getResourceClass()) != null;
    }

    public j register(com.bumptech.glide.load.data.f fVar) {
        this.f9167e.register(fVar);
        return this;
    }

    public final j setResourceDecoderBucketPriorityList(List<String> list) {
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.add("legacy_prepend_all");
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        arrayList.add("legacy_append");
        this.f9165c.setBucketPriorityList(arrayList);
        return this;
    }

    public <Data, TResource> j append(Class<Data> cls, Class<TResource> cls2, l2.r rVar) {
        append("legacy_append", cls, cls2, rVar);
        return this;
    }

    public <TResource, Transcode> j register(Class<TResource> cls, Class<Transcode> cls2, InterfaceC1988e interfaceC1988e) {
        this.f9168f.register(cls, cls2, interfaceC1988e);
        return this;
    }

    public <Data, TResource> j append(String str, Class<Data> cls, Class<TResource> cls2, l2.r rVar) {
        this.f9165c.append(str, rVar, cls, cls2);
        return this;
    }

    public j register(InterfaceC1222c interfaceC1222c) {
        this.f9169g.add(interfaceC1222c);
        return this;
    }

    public <TResource> j append(Class<TResource> cls, s sVar) {
        this.f9166d.append(cls, sVar);
        return this;
    }

    public <Model, Data> j append(Class<Model> cls, Class<Data> cls2, InterfaceC1563W interfaceC1563W) {
        this.f9163a.append(cls, cls2, interfaceC1563W);
        return this;
    }
}
