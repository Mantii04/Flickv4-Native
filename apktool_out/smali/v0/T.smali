.class public abstract Lv0/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/r0;


# instance fields
.field private final trackOutput:Lv0/r0;


# direct methods
.method public constructor <init>(Lv0/r0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv0/T;->trackOutput:Lv0/r0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public durationUs(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv0/T;->trackOutput:Lv0/r0;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lv0/r0;->durationUs(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public format(Landroidx/media3/common/Format;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv0/T;->trackOutput:Lv0/r0;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
