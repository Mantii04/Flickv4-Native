.class public Lflix/com/vision/models/adult/AdultLink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public label:Ljava/lang/String;

.field public quality:Ljava/lang/String;

.field public stream_url:Ljava/lang/String;


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
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lflix/com/vision/models/adult/AdultLink;

    .line 2
    .line 3
    iget-object p1, p1, Lflix/com/vision/models/adult/AdultLink;->stream_url:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lflix/com/vision/models/adult/AdultLink;->stream_url:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method
