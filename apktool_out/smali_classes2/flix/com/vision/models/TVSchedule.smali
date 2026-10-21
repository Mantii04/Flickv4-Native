.class public Lflix/com/vision/models/TVSchedule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xcL


# instance fields
.field public channel_name:Ljava/lang/String;

.field public end_time:Ljava/lang/String;

.field public episode_number:Ljava/lang/String;

.field public episode_title:Ljava/lang/String;

.field public imge_url:Ljava/lang/String;

.field public plot:Ljava/lang/String;

.field public show_title:Ljava/lang/String;

.field public start_time:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lflix/com/vision/models/TVSchedule;->start_time:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lflix/com/vision/models/TVSchedule;->end_time:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method
