const path = require("path");
const pptxgen = require("pptxgenjs");
const html2pptx = require("./skill/pptx/scripts/html2pptx");

async function build() {
  const pptx = new pptxgen();
  pptx.layout = "LAYOUT_16x9";
  pptx.author = "Sisyphus";
  pptx.title = "LangChain DeepAgents 使用（产品向）";

  const slideFiles = [
    "slide01.html",
    "slide02.html",
    "slide03.html",
    "slide04.html",
    "slide05.html",
    "slide06.html",
    "slide07.html",
    "slide08.html",
    "slide09.html",
    "slide10.html"
  ];

  for (const file of slideFiles) {
    const filePath = path.join(__dirname, "slides", file);
    await html2pptx(filePath, pptx);
  }

  await pptx.writeFile({ fileName: path.join(__dirname, "deepagents-ted.pptx") });
}

build().catch((err) => {
  console.error(err);
  process.exit(1);
});
