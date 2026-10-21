package com.google.common.base;

import P3.w;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
abstract class Predicates$ObjectPredicate implements w {

    /* renamed from: b, reason: collision with root package name */
    public static final AnonymousClass1 f13019b;

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ Predicates$ObjectPredicate[] f13020e;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.base.Predicates$ObjectPredicate$1] */
    static {
        ?? r02 = new Predicates$ObjectPredicate() { // from class: com.google.common.base.Predicates$ObjectPredicate.1
            @Override // P3.w
            public boolean apply(Object obj) {
                return true;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.alwaysTrue()";
            }
        };
        f13019b = r02;
        f13020e = new Predicates$ObjectPredicate[]{r02, new Predicates$ObjectPredicate() { // from class: com.google.common.base.Predicates$ObjectPredicate.2
            @Override // P3.w
            public boolean apply(Object obj) {
                return false;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.alwaysFalse()";
            }
        }, new Predicates$ObjectPredicate() { // from class: com.google.common.base.Predicates$ObjectPredicate.3
            @Override // P3.w
            public boolean apply(Object obj) {
                return obj == null;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.isNull()";
            }
        }, new Predicates$ObjectPredicate() { // from class: com.google.common.base.Predicates$ObjectPredicate.4
            @Override // P3.w
            public boolean apply(Object obj) {
                return obj != null;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.notNull()";
            }
        }};
    }

    public static Predicates$ObjectPredicate valueOf(String str) {
        return (Predicates$ObjectPredicate) Enum.valueOf(Predicates$ObjectPredicate.class, str);
    }

    public static Predicates$ObjectPredicate[] values() {
        return (Predicates$ObjectPredicate[]) f13020e.clone();
    }
}
