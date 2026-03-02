const pptxgen = require('pptxgenjs');
const html2pptx = require('/Users/felicity/.config/opencode/skill/pptx/scripts/html2pptx.js');

async function createPresentation() {
    const pptx = new pptxgen();
    pptx.layout = 'LAYOUT_16x9';
    pptx.author = 'Sisyphus';
    pptx.title = 'DeepAgent Presentation';

    await html2pptx('slides/slide1_title.html', pptx);
    await html2pptx('slides/slide2_what.html', pptx);
    await html2pptx('slides/slide3_characteristics.html', pptx);
    await html2pptx('slides/slide4_pillars.html', pptx);
    await html2pptx('slides/slide5_comparison.html', pptx);
    await html2pptx('slides/slide6_tools.html', pptx);
    await html2pptx('slides/slide7_usecases.html', pptx);
    await html2pptx('slides/slide8_frameworks.html', pptx);

    console.log('Saving presentation...');
    await pptx.writeFile({ fileName: 'DeepAgent_Presentation.pptx' });
    console.log('Presentation created successfully: DeepAgent_Presentation.pptx');
}

createPresentation().catch(console.error);
