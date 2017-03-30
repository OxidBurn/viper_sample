// Copyright (c) 2015 RAMBLER&Co
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol DataDisplayManager <NSObject>

/**
 *  @author Valeria Mozgova
 *
 *  Methods that returns dataSource for tableView.
 *
 *  @param tableView controller, that stores tableview
 *
 *  @return (id<UITableViewDataSource>)
 */
- (id<UITableViewDataSource>) dataSourceForTableView: (UITableView*) tableView;

/**
 *  @author Valeria Mozgova
 *
 *  Methods that returns delegate for tableView. DDM is not delegate itself.
 *
 *  @param tableView      tableView, whos delegate we want to get
 *  @param baseTableViewDelegate Main delegate of tableView (for example UITableViewController) - this parameter is nessesary for forwarding part of delegate methods
 *
 *  @return Delegate for tableView
 */
- (id<UITableViewDelegate>) delegateForTableView: (UITableView*)             tableView
                                withBaseDelegate: (id <UITableViewDelegate>) baseTableViewDelegate;

@end
