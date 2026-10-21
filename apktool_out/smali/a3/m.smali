.class public abstract La3/m;
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

.method public static create(JLS2/E;LS2/u;)La3/m;
    .locals 1

    .line 1
    new-instance v0, La3/b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, La3/b;-><init>(JLS2/E;LS2/u;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract getEvent()LS2/u;
.end method

.method public abstract getId()J
.end method

.method public abstract getTransportContext()LS2/E;
.end method
