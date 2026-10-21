.class public final LY5/g;
.super LY5/i;
.source "SourceFile"


# static fields
.field public static final a:LY5/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LY5/g;

    .line 2
    .line 3
    invoke-direct {v0}, LY5/i;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LY5/g;->a:LY5/g;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public nanoTime()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method
