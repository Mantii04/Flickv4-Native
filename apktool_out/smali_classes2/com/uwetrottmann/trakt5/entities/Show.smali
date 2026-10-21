.class public Lcom/uwetrottmann/trakt5/entities/Show;
.super Lcom/uwetrottmann/trakt5/entities/BaseEntity;
.source "SourceFile"


# instance fields
.field public airs:Lcom/uwetrottmann/trakt5/entities/Airs;

.field public certification:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public first_aired:Lorg/threeten/bp/OffsetDateTime;

.field public genres:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public homepage:Ljava/lang/String;

.field public ids:Lcom/uwetrottmann/trakt5/entities/ShowIds;

.field public language:Ljava/lang/String;

.field public network:Ljava/lang/String;

.field public runtime:Ljava/lang/Integer;

.field public status:Lcom/uwetrottmann/trakt5/enums/Status;

.field public trailer:Ljava/lang/String;

.field public year:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/uwetrottmann/trakt5/entities/BaseEntity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
