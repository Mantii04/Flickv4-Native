.class public Lcom/google/android/gms/common/api/internal/RegistrationMethods;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lcom/google/android/gms/common/api/Api$AnyClient;",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;

.field public final b:Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;

.field public final c:Lcom/google/android/gms/common/api/internal/zacj;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;Lcom/google/android/gms/common/api/internal/zacj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods;->a:Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods;->b:Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods;->c:Lcom/google/android/gms/common/api/internal/zacj;

    .line 9
    .line 10
    return-void
.end method

.method public static builder()Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "L:Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder<",
            "TA;T",
            "L;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/google/android/gms/common/api/internal/zacj;->b:Lcom/google/android/gms/common/api/internal/zacj;

    .line 7
    .line 8
    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->c:Lcom/google/android/gms/common/api/internal/zacj;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, v0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->f:Z

    .line 12
    .line 13
    return-object v0
.end method
