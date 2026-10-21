package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
final class AnnotatedCreatorCollector extends CollectorBase {
    private AnnotatedConstructor _defaultConstructor;
    private final TypeResolutionContext _typeContext;

    public AnnotatedCreatorCollector(AnnotationIntrospector annotationIntrospector, TypeResolutionContext typeResolutionContext) {
        super(annotationIntrospector);
        this._typeContext = typeResolutionContext;
    }

    private List<AnnotatedConstructor> _findPotentialConstructors(JavaType javaType, Class<?> cls) {
        ClassUtil.Ctor ctor;
        ArrayList arrayList;
        int i2;
        List<AnnotatedConstructor> list;
        if (javaType.isEnumType()) {
            ctor = null;
            arrayList = null;
        } else {
            ctor = null;
            arrayList = null;
            for (ClassUtil.Ctor ctor2 : ClassUtil.getConstructors(javaType.getRawClass())) {
                if (isIncludableConstructor(ctor2.getConstructor())) {
                    if (ctor2.getParamCount() == 0) {
                        ctor = ctor2;
                    } else {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(ctor2);
                    }
                }
            }
        }
        if (arrayList == null) {
            list = Collections.EMPTY_LIST;
            if (ctor == null) {
                return list;
            }
            i2 = 0;
        } else {
            int size = arrayList.size();
            ArrayList arrayList2 = new ArrayList(size);
            for (int i7 = 0; i7 < size; i7++) {
                arrayList2.add(null);
            }
            i2 = size;
            list = arrayList2;
        }
        if (cls != null) {
            MemberKey[] memberKeyArr = null;
            for (ClassUtil.Ctor ctor3 : ClassUtil.getConstructors(cls)) {
                if (ctor3.getParamCount() == 0) {
                    if (ctor != null) {
                        this._defaultConstructor = constructDefaultConstructor(ctor, ctor3);
                        ctor = null;
                    }
                } else if (arrayList != null) {
                    if (memberKeyArr == null) {
                        memberKeyArr = new MemberKey[i2];
                        for (int i8 = 0; i8 < i2; i8++) {
                            memberKeyArr[i8] = new MemberKey(((ClassUtil.Ctor) arrayList.get(i8)).getConstructor());
                        }
                    }
                    MemberKey memberKey = new MemberKey(ctor3.getConstructor());
                    int i9 = 0;
                    while (true) {
                        if (i9 >= i2) {
                            break;
                        }
                        if (memberKey.equals(memberKeyArr[i9])) {
                            list.set(i9, constructNonDefaultConstructor((ClassUtil.Ctor) arrayList.get(i9), ctor3));
                            break;
                        }
                        i9++;
                    }
                }
            }
        }
        if (ctor != null) {
            this._defaultConstructor = constructDefaultConstructor(ctor, null);
        }
        for (int i10 = 0; i10 < i2; i10++) {
            if (list.get(i10) == null) {
                list.set(i10, constructNonDefaultConstructor((ClassUtil.Ctor) arrayList.get(i10), null));
            }
        }
        return list;
    }

    private List<AnnotatedMethod> _findPotentialFactories(JavaType javaType, Class<?> cls) {
        ArrayList arrayList = null;
        for (Method method : ClassUtil.getClassMethods(javaType.getRawClass())) {
            if (Modifier.isStatic(method.getModifiers())) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(method);
            }
        }
        if (arrayList == null) {
            return Collections.EMPTY_LIST;
        }
        int size = arrayList.size();
        ArrayList arrayList2 = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            arrayList2.add(null);
        }
        if (cls != null) {
            MemberKey[] memberKeyArr = null;
            for (Method method2 : ClassUtil.getDeclaredMethods(cls)) {
                if (Modifier.isStatic(method2.getModifiers())) {
                    if (memberKeyArr == null) {
                        memberKeyArr = new MemberKey[size];
                        for (int i7 = 0; i7 < size; i7++) {
                            memberKeyArr[i7] = new MemberKey((Method) arrayList.get(i7));
                        }
                    }
                    MemberKey memberKey = new MemberKey(method2);
                    int i8 = 0;
                    while (true) {
                        if (i8 >= size) {
                            break;
                        }
                        if (memberKey.equals(memberKeyArr[i8])) {
                            arrayList2.set(i8, constructFactoryCreator((Method) arrayList.get(i8), method2));
                            break;
                        }
                        i8++;
                    }
                }
            }
        }
        for (int i9 = 0; i9 < size; i9++) {
            if (((AnnotatedMethod) arrayList2.get(i9)) == null) {
                arrayList2.set(i9, constructFactoryCreator((Method) arrayList.get(i9), null));
            }
        }
        return arrayList2;
    }

    private AnnotationMap[] collectAnnotations(Annotation[][] annotationArr, Annotation[][] annotationArr2) {
        int length = annotationArr.length;
        AnnotationMap[] annotationMapArr = new AnnotationMap[length];
        for (int i2 = 0; i2 < length; i2++) {
            AnnotationCollector collectAnnotations = collectAnnotations(AnnotationCollector.emptyCollector(), annotationArr[i2]);
            if (annotationArr2 != null) {
                collectAnnotations = collectAnnotations(collectAnnotations, annotationArr2[i2]);
            }
            annotationMapArr[i2] = collectAnnotations.asAnnotationMap();
        }
        return annotationMapArr;
    }

    public static AnnotatedClass.Creators collectCreators(AnnotationIntrospector annotationIntrospector, TypeResolutionContext typeResolutionContext, JavaType javaType, Class<?> cls) {
        return new AnnotatedCreatorCollector(annotationIntrospector, typeResolutionContext).collect(javaType, cls);
    }

    private static boolean isIncludableConstructor(Constructor<?> constructor) {
        return !constructor.isSynthetic();
    }

    public AnnotatedClass.Creators collect(JavaType javaType, Class<?> cls) {
        List<AnnotatedConstructor> _findPotentialConstructors = _findPotentialConstructors(javaType, cls);
        List<AnnotatedMethod> _findPotentialFactories = _findPotentialFactories(javaType, cls);
        AnnotationIntrospector annotationIntrospector = this._intr;
        if (annotationIntrospector != null) {
            AnnotatedConstructor annotatedConstructor = this._defaultConstructor;
            if (annotatedConstructor != null && annotationIntrospector.hasIgnoreMarker(annotatedConstructor)) {
                this._defaultConstructor = null;
            }
            int size = _findPotentialConstructors.size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                if (this._intr.hasIgnoreMarker(_findPotentialConstructors.get(size))) {
                    _findPotentialConstructors.remove(size);
                }
            }
            int size2 = _findPotentialFactories.size();
            while (true) {
                size2--;
                if (size2 < 0) {
                    break;
                }
                if (this._intr.hasIgnoreMarker(_findPotentialFactories.get(size2))) {
                    _findPotentialFactories.remove(size2);
                }
            }
        }
        return new AnnotatedClass.Creators(this._defaultConstructor, _findPotentialConstructors, _findPotentialFactories);
    }

    public AnnotatedConstructor constructDefaultConstructor(ClassUtil.Ctor ctor, ClassUtil.Ctor ctor2) {
        return this._intr == null ? new AnnotatedConstructor(this._typeContext, ctor.getConstructor(), CollectorBase._emptyAnnotationMap(), CollectorBase.NO_ANNOTATION_MAPS) : new AnnotatedConstructor(this._typeContext, ctor.getConstructor(), collectAnnotations(ctor, ctor2), CollectorBase.NO_ANNOTATION_MAPS);
    }

    public AnnotatedMethod constructFactoryCreator(Method method, Method method2) {
        int length = method.getParameterTypes().length;
        if (this._intr == null) {
            return new AnnotatedMethod(this._typeContext, method, CollectorBase._emptyAnnotationMap(), CollectorBase._emptyAnnotationMaps(length));
        }
        if (length == 0) {
            return new AnnotatedMethod(this._typeContext, method, collectAnnotations(method, method2), CollectorBase.NO_ANNOTATION_MAPS);
        }
        return new AnnotatedMethod(this._typeContext, method, collectAnnotations(method, method2), collectAnnotations(method.getParameterAnnotations(), method2 == null ? null : method2.getParameterAnnotations()));
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0075  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.fasterxml.jackson.databind.introspect.AnnotatedConstructor constructNonDefaultConstructor(com.fasterxml.jackson.databind.util.ClassUtil.Ctor r9, com.fasterxml.jackson.databind.util.ClassUtil.Ctor r10) {
        /*
            r8 = this;
            r0 = 1
            r1 = 2
            r2 = 0
            int r3 = r9.getParamCount()
            com.fasterxml.jackson.databind.AnnotationIntrospector r4 = r8._intr
            if (r4 != 0) goto L1f
            com.fasterxml.jackson.databind.introspect.AnnotatedConstructor r10 = new com.fasterxml.jackson.databind.introspect.AnnotatedConstructor
            com.fasterxml.jackson.databind.introspect.TypeResolutionContext r0 = r8._typeContext
            java.lang.reflect.Constructor r9 = r9.getConstructor()
            com.fasterxml.jackson.databind.introspect.AnnotationMap r1 = com.fasterxml.jackson.databind.introspect.CollectorBase._emptyAnnotationMap()
            com.fasterxml.jackson.databind.introspect.AnnotationMap[] r2 = com.fasterxml.jackson.databind.introspect.CollectorBase._emptyAnnotationMaps(r3)
            r10.<init>(r0, r9, r1, r2)
            return r10
        L1f:
            if (r3 != 0) goto L33
            com.fasterxml.jackson.databind.introspect.AnnotatedConstructor r0 = new com.fasterxml.jackson.databind.introspect.AnnotatedConstructor
            com.fasterxml.jackson.databind.introspect.TypeResolutionContext r1 = r8._typeContext
            java.lang.reflect.Constructor r2 = r9.getConstructor()
            com.fasterxml.jackson.databind.introspect.AnnotationMap r9 = r8.collectAnnotations(r9, r10)
            com.fasterxml.jackson.databind.introspect.AnnotationMap[] r10 = com.fasterxml.jackson.databind.introspect.CollectorBase.NO_ANNOTATION_MAPS
            r0.<init>(r1, r2, r9, r10)
            return r0
        L33:
            java.lang.annotation.Annotation[][] r4 = r9.getParameterAnnotations()
            int r5 = r4.length
            r6 = 0
            if (r3 == r5) goto L9b
            java.lang.Class r5 = r9.getDeclaringClass()
            boolean r7 = com.fasterxml.jackson.databind.util.ClassUtil.isEnumType(r5)
            if (r7 == 0) goto L57
            int r7 = r4.length
            int r7 = r7 + r1
            if (r3 != r7) goto L57
            int r5 = r4.length
            int r5 = r5 + r1
            java.lang.annotation.Annotation[][] r5 = new java.lang.annotation.Annotation[r5][]
            int r7 = r4.length
            java.lang.System.arraycopy(r4, r2, r5, r1, r7)
            com.fasterxml.jackson.databind.introspect.AnnotationMap[] r6 = r8.collectAnnotations(r5, r6)
        L55:
            r4 = r5
            goto L72
        L57:
            boolean r5 = r5.isMemberClass()
            if (r5 == 0) goto L72
            int r5 = r4.length
            int r5 = r5 + r0
            if (r3 != r5) goto L72
            int r5 = r4.length
            int r5 = r5 + r0
            java.lang.annotation.Annotation[][] r5 = new java.lang.annotation.Annotation[r5][]
            int r7 = r4.length
            java.lang.System.arraycopy(r4, r2, r5, r0, r7)
            java.lang.annotation.Annotation[] r4 = com.fasterxml.jackson.databind.introspect.CollectorBase.NO_ANNOTATIONS
            r5[r2] = r4
            com.fasterxml.jackson.databind.introspect.AnnotationMap[] r6 = r8.collectAnnotations(r5, r6)
            goto L55
        L72:
            if (r6 == 0) goto L75
            goto La6
        L75:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.Class r9 = r9.getDeclaringClass()
            java.lang.String r9 = r9.getName()
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            int r4 = r4.length
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            r5 = 3
            java.lang.Object[] r5 = new java.lang.Object[r5]
            r5[r2] = r9
            r5[r0] = r3
            r5[r1] = r4
            java.lang.String r9 = "Internal error: constructor for %s has mismatch: %d parameters; %d sets of annotations"
            java.lang.String r9 = java.lang.String.format(r9, r5)
            r10.<init>(r9)
            throw r10
        L9b:
            if (r10 != 0) goto L9e
            goto La2
        L9e:
            java.lang.annotation.Annotation[][] r6 = r10.getParameterAnnotations()
        La2:
            com.fasterxml.jackson.databind.introspect.AnnotationMap[] r6 = r8.collectAnnotations(r4, r6)
        La6:
            com.fasterxml.jackson.databind.introspect.AnnotatedConstructor r0 = new com.fasterxml.jackson.databind.introspect.AnnotatedConstructor
            com.fasterxml.jackson.databind.introspect.TypeResolutionContext r1 = r8._typeContext
            java.lang.reflect.Constructor r2 = r9.getConstructor()
            com.fasterxml.jackson.databind.introspect.AnnotationMap r9 = r8.collectAnnotations(r9, r10)
            r0.<init>(r1, r2, r9, r6)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.introspect.AnnotatedCreatorCollector.constructNonDefaultConstructor(com.fasterxml.jackson.databind.util.ClassUtil$Ctor, com.fasterxml.jackson.databind.util.ClassUtil$Ctor):com.fasterxml.jackson.databind.introspect.AnnotatedConstructor");
    }

    private AnnotationMap collectAnnotations(ClassUtil.Ctor ctor, ClassUtil.Ctor ctor2) {
        AnnotationCollector collectAnnotations = collectAnnotations(ctor.getConstructor().getDeclaredAnnotations());
        if (ctor2 != null) {
            collectAnnotations = collectAnnotations(collectAnnotations, ctor2.getConstructor().getDeclaredAnnotations());
        }
        return collectAnnotations.asAnnotationMap();
    }

    private final AnnotationMap collectAnnotations(AnnotatedElement annotatedElement, AnnotatedElement annotatedElement2) {
        AnnotationCollector collectAnnotations = collectAnnotations(annotatedElement.getDeclaredAnnotations());
        if (annotatedElement2 != null) {
            collectAnnotations = collectAnnotations(collectAnnotations, annotatedElement2.getDeclaredAnnotations());
        }
        return collectAnnotations.asAnnotationMap();
    }
}
