.class public Lcom/uwetrottmann/trakt5/entities/Movie;
.super Lcom/uwetrottmann/trakt5/entities/BaseEntity;
.source "SourceFile"


# instance fields
.field public certification:Ljava/lang/String;

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

.field public ids:Lcom/uwetrottmann/trakt5/entities/MovieIds;

.field public language:Ljava/lang/String;

.field public released:Lorg/threeten/bp/LocalDate;

.field public runtime:Ljava/lang/Integer;

.field public tagline:Ljava/lang/String;

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
