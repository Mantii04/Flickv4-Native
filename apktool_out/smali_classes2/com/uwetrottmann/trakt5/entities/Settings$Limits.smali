.class public Lcom/uwetrottmann/trakt5/entities/Settings$Limits;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uwetrottmann/trakt5/entities/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Limits"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uwetrottmann/trakt5/entities/Settings$Limits$CountAndItemCount;,
        Lcom/uwetrottmann/trakt5/entities/Settings$Limits$ItemCount;
    }
.end annotation


# instance fields
.field public favorites:Lcom/uwetrottmann/trakt5/entities/Settings$Limits$ItemCount;

.field public list:Lcom/uwetrottmann/trakt5/entities/Settings$Limits$CountAndItemCount;

.field public recommendations:Lcom/uwetrottmann/trakt5/entities/Settings$Limits$ItemCount;

.field public watchlist:Lcom/uwetrottmann/trakt5/entities/Settings$Limits$ItemCount;


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
