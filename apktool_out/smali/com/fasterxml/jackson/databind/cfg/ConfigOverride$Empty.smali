.class final Lcom/fasterxml/jackson/databind/cfg/ConfigOverride$Empty;
.super Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Empty"
.end annotation


# static fields
.field static final INSTANCE:Lcom/fasterxml/jackson/databind/cfg/ConfigOverride$Empty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride$Empty;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride$Empty;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride$Empty;->INSTANCE:Lcom/fasterxml/jackson/databind/cfg/ConfigOverride$Empty;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
