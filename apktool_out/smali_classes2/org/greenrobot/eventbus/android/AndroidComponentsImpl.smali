.class public Lorg/greenrobot/eventbus/android/AndroidComponentsImpl;
.super Lorg/greenrobot/eventbus/android/AndroidComponents;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/greenrobot/eventbus/android/AndroidLogger;

    .line 2
    .line 3
    const-string v1, "EventBus"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/greenrobot/eventbus/android/AndroidLogger;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lorg/greenrobot/eventbus/android/DefaultAndroidMainThreadSupport;

    .line 9
    .line 10
    invoke-direct {v1}, Lorg/greenrobot/eventbus/android/DefaultAndroidMainThreadSupport;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0, v1}, Lorg/greenrobot/eventbus/android/AndroidComponents;-><init>(Lorg/greenrobot/eventbus/Logger;Lorg/greenrobot/eventbus/MainThreadSupport;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
