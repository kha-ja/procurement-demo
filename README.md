# Mack Procurement Agent - Demo Mockups

Interactive HTML mockups demonstrating Mack, an email-based procurement agent for construction general contractors.

## What is Mack?

Mack helps GCs source materials by handling vendor research, outreach, negotiation, and order coordination. The user communicates via email while Mack works in the background, contacting 5-10 vendors vs the 1-3 a GC typically has time for.

**Agent Email**: mack@procure.it

## Running the Demo

Open `index.html` in a browser. Use the toggle at the top to switch between:

- **Phone** (default) - Mobile-optimized vertical layout
- **Laptop** - Desktop 70/30 split with email view and agent backstage

## Demo Scenario

| Field | Value |
|-------|-------|
| GC | Dana at Sunrise Homes |
| Project | Single-family home, 2,400 sq ft |
| Location | 42 Coventry Lane, Windham, NH 03087 |
| Ground break | March 15th |
| Material deadline | March 10th |

## 8-Chapter Flow

1. **Initial Request** (Feb 20) - Dana emails Mack with architecture plans and materials list
2. **Research Begins** (Feb 20) - Mack parses 127 line items, identifies 9 vendors, submits contact forms
3. **Vendor Quotes** (Feb 21-24) - 8 vendors respond, user CC'd on all communications
4. **Negotiation** (Feb 25-26) - Mack negotiates free delivery + net-30 terms with Granite Grove
5. **Recommendation** (Feb 27) - Comparison spreadsheet attached, 3 vendors recommended, $4,200 savings
6. **Approval & Orders** (Feb 27) - Dana approves, Mack confirms with all vendors
7. **Invoices Confirmed** (Feb 28) - All deliveries scheduled before deadline
8. **Scope Change** (Mar 15) - Sunroom addition leveraging existing vendor relationships

## Fictional Vendors

### Lumber/General
- Granite Grove Lumber (Derry, NH) - 8 mi
- Pinnacle Pine Supply (Salem, NH) - 12 mi
- Timber Trail Building Supply (Nashua, NH) - 18 mi
- Concord Contractor Supply (Concord, NH) - 31 mi

### Foundation/Concrete
- Footing First Supply (Manchester, NH) - 15 mi
- Bedrock Building Materials (Lowell, MA) - 22 mi

### Windows/Doors
- Pane & Panel Co. (Londonderry, NH) - 10 mi
- Clear Choice Windows (Haverhill, MA) - 28 mi
- Doorway Direct (Nashua, NH) - 19 mi

## Key Features Demonstrated

- User CC'd on all vendor communications (transparency)
- Comparison documents attached to recommendations
- Price negotiation leveraging volume/relationship
- Backorder warnings flagged proactively
- Existing vendor relationships used for reorders
- Net-30 terms negotiated as bonus

## UI Design

| Element | Specification |
|---------|---------------|
| Layout | 70% email view, 30% agent backstage (laptop) |
| Email styling | Gmail-like with avatars |
| Tables | Google Sheets style |
| Fonts | Google Sans (headers), Roboto (body), IBM Plex Mono (prices) |

## Editing the Demo

The HTML files are self-contained. To modify:

1. **Change copy**: Search for text strings and replace
2. **Change agent name**: Replace "Mack" and "mack@procure.it" throughout
3. **Change colors**: Edit CSS variables in `:root` at top of file
4. **Change scenario**: Update vendor names, project details, email content

### Figma Import

Use the [html.to.design](https://www.figma.com/community/plugin/1159123024924461424) plugin:
1. Install plugin in Figma
2. Open plugin → "Editor" tab
3. Paste HTML code or upload file
4. Click Import

Note: Chapter navigation won't work in Figma, but each chapter imports as a separate frame.

## Future Improvements

The current implementation prioritizes rapid prototyping over maintainability. If this demo evolves into a production UI or needs significant iteration, consider these improvements:

### Separate Concerns
- **Extract CSS** to shared stylesheet - both mockups duplicate ~800 lines of nearly identical styles
- **Extract JS** to separate file - phone mockup has ~500 lines of inline JS including HTML templates
- **Shared design tokens** - CSS variables are duplicated and slightly inconsistent between files

### Reduce Duplication
- **Email component template** - the same email message structure is copy-pasted 20+ times
- **Console log template** - each chapter's console content is a hardcoded HTML string
- **Chapter metadata** - defined in JS object but could drive more of the UI

### Data-Driven Content
- **Move content to JSON** - emails, console logs, and chapter info could be separate data files
- **Template rendering** - generate email/console HTML from data instead of hardcoding
- **Single source of truth** - scenario details (vendors, prices, dates) appear in multiple places

### Accessibility
- **ARIA labels** - buttons use emoji/symbols without accessible names
- **Keyboard navigation** - chapter dots and tabs need focus states
- **Screen reader support** - semantic HTML for email thread structure

### Code Quality
- **Remove magic numbers** - hardcoded values like `375px`, `700px`, `1600px`
- **Consistent color usage** - some colors use CSS variables, others use hex literals
- **State management** - global variables could be encapsulated

### Consider Framework
If significant iteration is needed, migrating to React/Vue/Svelte would enable:
- Component reuse (EmailMessage, ConsoleLog, ChapterNav)
- Props-based content injection
- Cleaner state management
- Hot reloading during development
