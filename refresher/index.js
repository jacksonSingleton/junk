import { remote } from 'webdriverio'

const browser = await remote({
    capabilities: {
        browserName: 'chrome'
    }
})

await browser.url('https://app.smartsheet.com/b/home?lx=_IQjRpPGuMYWaqtglAHs_A')

setInterval(() => {
    browser.refresh()
}, (1000 * 60 * 10))
