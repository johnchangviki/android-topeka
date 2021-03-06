/*
 * Copyright 2017 Google Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.google.samples.apps.topeka.helper

import android.content.Context
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import com.google.android.instantapps.InstantApps
import com.google.samples.apps.topeka.persistence.TopekaDatabaseHelper

const val TAG = "Topeka"

fun Context.database() = TopekaDatabaseHelper.getInstance(this,
        if(InstantApps.isInstantApp(this))
                resources.assets.open("instant_categories.json")
        else
                resources.assets.open("categories.json"))

fun Context.inflate(resource: Int, root: ViewGroup?, attachToRoot: Boolean): View =
        LayoutInflater.from(this).inflate(resource, root, attachToRoot)