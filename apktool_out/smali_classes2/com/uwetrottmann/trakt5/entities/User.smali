.class public Lcom/uwetrottmann/trakt5/entities/User;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uwetrottmann/trakt5/entities/User$UserIds;
    }
.end annotation


# instance fields
.field public about:Ljava/lang/String;

.field public age:I

.field public gender:Ljava/lang/String;

.field public ids:Lcom/uwetrottmann/trakt5/entities/User$UserIds;

.field public images:Lcom/uwetrottmann/trakt5/entities/Images;

.field public isPrivate:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "private"
    .end annotation
.end field

.field public joined_at:Lorg/threeten/bp/OffsetDateTime;

.field public location:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public username:Ljava/lang/String;

.field public vip:Ljava/lang/Boolean;

.field public vip_ep:Ljava/lang/Boolean;


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
