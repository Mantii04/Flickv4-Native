.class public abstract Lf1/F;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onRelease()V
    .locals 0

    .line 1
    return-void
.end method

.method public onSelect()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract onSetVolume(I)V
.end method

.method public onUnselect()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-void
.end method

.method public onUnselect(I)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lf1/F;->onUnselect()V

    return-void
.end method

.method public abstract onUpdateVolume(I)V
.end method
